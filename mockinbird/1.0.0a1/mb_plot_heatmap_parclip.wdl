version 1.0

task MbPlotHeatmapParclip {
  input {
    String? downstream
    String? upstream
    String mb_plot_heat_map
  }
  command <<<
    mb-plot-heatmap parclip \
      ~{mb_plot_heat_map} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""}
  >>>
  parameter_meta {
    downstream: ""
    upstream: ""
    mb_plot_heat_map: ""
  }
}