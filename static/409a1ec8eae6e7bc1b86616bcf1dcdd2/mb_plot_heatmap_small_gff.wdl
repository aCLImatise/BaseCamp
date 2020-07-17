version 1.0

task MbPlotHeatmapSmallGff {
  input {
    String? downstream
    String mb_plot_heat_map_small
  }
  command <<<
    mb-plot-heatmap-small gff \
      ~{mb_plot_heat_map_small} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  parameter_meta {
    downstream: ""
    mb_plot_heat_map_small: ""
  }
}