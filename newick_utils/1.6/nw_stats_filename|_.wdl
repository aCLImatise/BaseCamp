version 1.0

task NwStatsFilename|_ {
  input {
    Boolean? format_l_default
  }
  command <<<
    nw_stats filename|- \
      ~{true="-f" false="" format_l_default}
  >>>
  parameter_meta {
    format_l_default: "[lc]: format in lines (l) or columns (c). Default is l."
  }
}