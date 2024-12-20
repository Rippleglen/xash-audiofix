/*
TabView.cpp -- tabbed view
Copyright (C) 2017 a1batross

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
*/
#include "TabView.h"
#include "Scissor.h"

CMenuTabView::CMenuTabView() : BaseClass(),
	m_szTabNames()
{
	m_bWrapCursor = true;
	SetCharSize( QM_BOLDFONT );
	eTextAlignment = QM_CENTER;
}

Point CMenuTabView::GetPositionOffset() const
{
	Point ret = m_scPos;
	ret.y += m_scChSize.h * 1.5f;

	return ret;
}

void CMenuTabView::VidInit()
{
	CalcPosition();
	CalcSizes();

	_VidInit();
	VidInitItems();

	m_szTab.w = m_scSize.w / m_numItems;
	m_szTab.h = m_scChSize.h * 1.5f;
}

const char *CMenuTabView::Key(int key, int down)
{
	return CMenuItemsHolder::Key( key, down );
}

void CMenuTabView::DrawTab(Point pt, const char *name, bool isEnd, bool isSelected, bool isHighlighted)
{
	int textColor = uiInputTextColor;
	int fillColor = uiColorBlack;

	if( isSelected && !isHighlighted )
	{
		fillColor = uiInputBgColor;
		textColor = uiInputFgColor;
	}
	else if( isHighlighted )
	{
		textColor = uiPromptFocusColor;
	}

	UI_FillRect( pt, m_szTab, fillColor );
	UI_DrawString( font, pt, m_szTab, name, textColor, 0, m_scChSize, eTextAlignment, true );

	if( !isEnd )
	{
		int x = pt.x + m_szTab.w;
		int y = pt.y - UI_OUTLINE_WIDTH;
		int w = UI_OUTLINE_WIDTH;
		int h = m_szTab.h + UI_OUTLINE_WIDTH + UI_OUTLINE_WIDTH;

		// draw right
		UI_FillRect( x, y, w, h, uiColorHelp );
	}
}

void CMenuTabView::Draw()
{
	// draw frame first
	UI_DrawRectangle( m_scPos, m_scSize, uiColorHelp );

	// draw tabs
	Point tabOffset = m_scPos;
	for( int i = 0; i < m_numItems; i++ )
	{
		bool isEnd = i == ( m_numItems - 1 );
		bool isHighlighted = UI_CursorInRect( tabOffset, m_szTab );
		bool isSelected = i == m_iCursor;

		DrawTab( tabOffset, m_szTabNames[i], isEnd, isSelected, isHighlighted );
		tabOffset.x += m_szTab.w;
	}

	Point contentOffset = Point( m_scPos.x, m_scPos.y + m_scChSize.h * 1.5f );
	Size contentSize = Size( m_scSize.w, m_scSize.h - m_scChSize.h * 1.5f );

	// draw line after tab
	UI_FillRect( contentOffset.x, contentOffset.y,
		m_scSize.w, UI_OUTLINE_WIDTH, uiColorHelp );

	// fill background
	UI_FillRect( contentOffset, contentSize, uiColorBlack );

	// draw contents
	if( m_iCursor >= 0 && m_iCursor < m_numItems )
	{
		UI::Scissor::PushScissor( contentOffset, contentSize );
			m_pItems[m_iCursor]->Draw();
		UI::Scissor::PopScissor();
	}
}
