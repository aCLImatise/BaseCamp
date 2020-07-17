version 1.0

task Makmdm {
  input {
    Boolean? _brosum_series
    Boolean? _vt_series
    Boolean? opt_dot_dot_dot
    String? dest_path
  }
  command <<<
    makmdm \
      ~{dest_path} \
      ~{true="-b" false="" _brosum_series} \
      ~{true="-v" false="" _vt_series} \
      ~{true="-opt..." false="" opt_dot_dot_dot}
  >>>
  parameter_meta {
    _brosum_series: ":     Brosum series"
    _vt_series: ":     VT series"
    opt_dot_dot_dot: ""
    dest_path: ""
  }
}