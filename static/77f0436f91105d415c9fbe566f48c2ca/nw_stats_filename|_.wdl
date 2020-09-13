version 1.0

task NwStatsFilename {
  input {
    Boolean? format_lines_l
  }
  command <<<
    nw_stats filename__ \
      ~{if (format_lines_l) then "-f" else ""}
  >>>
  parameter_meta {
    format_lines_l: "[lc]: format in lines (l) or columns (c). Default is l."
  }
  output {
    File out_stdout = stdout()
  }
}