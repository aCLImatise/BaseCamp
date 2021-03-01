version 1.0

task MbplotheatmapParclip {
  input {
    String? upstream
    String? downstream
    String mb_plot_heat_map
  }
  command <<<
    mb_plot_heatmap parclip \
      ~{mb_plot_heat_map} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    upstream: ""
    downstream: ""
    mb_plot_heat_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}