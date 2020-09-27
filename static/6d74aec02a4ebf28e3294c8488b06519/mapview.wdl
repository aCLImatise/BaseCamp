version 1.0

task Mapview {
  input {
    Boolean? maxdist_set_distance
    Boolean? format_set_format
    String printing_dot
  }
  command <<<
    mapview \
      ~{printing_dot} \
      ~{if (maxdist_set_distance) then "-d" else ""} \
      ~{if (format_set_format) then "-f" else ""}
  >>>
  parameter_meta {
    maxdist_set_distance: "|maxdist      Set the maximum base-pair distance between linked matches\\n(default 50000)"
    format_set_format: "|format       Set the output format to 'pdf', 'ps' or 'fig'\\n(default 'fig')"
    printing_dot: "MANDATORY:"
  }
  output {
    File out_stdout = stdout()
  }
}