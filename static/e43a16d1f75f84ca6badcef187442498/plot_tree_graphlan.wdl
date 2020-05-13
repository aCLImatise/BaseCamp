version 1.0

task PlotTreeGraphlan.py {
  input {
    String ifnIfnTree
    String colorizedColorizedMetadata
    String figFigSize
    String legendLegendMarkerSize
    String legendLegendFontSize
    String legendLegendMarkerEdgeWidth
    String leafLeafMarkerSize
    String leafLeafMarkerEdgeWidth
    String dpiDpi
    String figureFigureExtension
    String ofOfNPrefix
  }
  command <<<
    plot_tree_graphlan.py \
      ~{if defined(ifnIfnTree) then ("--ifn_tree " +  '"' + ifnIfnTree + '"') else ""} \
      ~{if defined(colorizedColorizedMetadata) then ("--colorized_metadata " +  '"' + colorizedColorizedMetadata + '"') else ""} \
      ~{if defined(figFigSize) then ("--fig_size " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(legendLegendMarkerSize) then ("--legend_marker_size " +  '"' + legendLegendMarkerSize + '"') else ""} \
      ~{if defined(legendLegendFontSize) then ("--legend_font_size " +  '"' + legendLegendFontSize + '"') else ""} \
      ~{if defined(legendLegendMarkerEdgeWidth) then ("--legend_marker_edge_width " +  '"' + legendLegendMarkerEdgeWidth + '"') else ""} \
      ~{if defined(leafLeafMarkerSize) then ("--leaf_marker_size " +  '"' + leafLeafMarkerSize + '"') else ""} \
      ~{if defined(leafLeafMarkerEdgeWidth) then ("--leaf_marker_edge_width " +  '"' + leafLeafMarkerEdgeWidth + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(figureFigureExtension) then ("--figure_extension " +  '"' + figureFigureExtension + '"') else ""} \
      ~{if defined(ofOfNPrefix) then ("--ofn_prefix " +  '"' + ofOfNPrefix + '"') else ""}
  >>>
}