version 1.0

task RsatDrawheatmap {
  input {
    Boolean? out_format
    String draw_heat_map
    String util
    String heat_map_dot
  }
  command <<<
    rsat draw_heatmap \
      ~{draw_heat_map} \
      ~{util} \
      ~{heat_map_dot} \
      ~{if (out_format) then "-out_format" else ""}
  >>>
  parameter_meta {
    out_format: "[png|jpeg]"
    draw_heat_map: "[1mVERSION[0m"
    util: "[1mUSAGE[0m"
    heat_map_dot: "[1m-out_format img_format[0m"
  }
  output {
    File out_stdout = stdout()
  }
}