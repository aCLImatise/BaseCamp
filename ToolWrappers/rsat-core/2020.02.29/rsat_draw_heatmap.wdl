version 1.0

task RsatDrawheatmap {
  input {
    Boolean? r_plot
    Boolean? out_format
    String? o
    String draw_heat_map
    String util
    String heat_map_dot
  }
  command <<<
    rsat draw_heatmap \
      ~{draw_heat_map} \
      ~{util} \
      ~{heat_map_dot} \
      ~{if (r_plot) then "-r_plot" else ""} \
      ~{if (out_format) then "-out_format" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    r_plot: "(2016-02-29)."
    out_format: "[png|jpeg]"
    o: ""
    draw_heat_map: "[1mVERSION[0m"
    util: "[1mUSAGE[0m"
    heat_map_dot: "[1m-out_format img_format[0m"
  }
  output {
    File out_stdout = stdout()
  }
}