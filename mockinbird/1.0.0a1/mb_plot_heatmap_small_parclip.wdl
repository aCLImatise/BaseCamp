version 1.0

task MbplotheatmapsmallParclip {
  input {
    String? downstream
    String mb_plot_heat_map_small
  }
  command <<<
    mb_plot_heatmap_small parclip \
      ~{mb_plot_heat_map_small} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  parameter_meta {
    downstream: ""
    mb_plot_heat_map_small: ""
  }
  output {
    File out_stdout = stdout()
  }
}