version 1.0

task MbplotheatmapOutputdir {
  input {
    String? upstream
    String? downstream
    String mb_plot_heat_map
  }
  command <<<
    mb_plot_heatmap outputdir \
      ~{mb_plot_heat_map} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  parameter_meta {
    upstream: ""
    downstream: ""
    mb_plot_heat_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}