#
#  tbutton widget
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#
require 'tk'
require 'tkextlib/tile.rb'

module Tk
  module Tile
    class TButton < TkButton
    end
  end
end

class Tk::Tile::TButton < TkButton
  include Tk::Tile::TileWidget

  if Tk::Tile::USE_TTK_NAMESPACE
    TkCommandNames = ['::ttk::button'.freeze].freeze
  else
    TkCommandNames = ['::tbutton'.freeze].freeze
  end
  WidgetClassName = 'TButton'.freeze
  WidgetClassNames[WidgetClassName] = self
end
