version 1.0

task NwStatsFilename {
  input {
    Boolean? format_l_columns
  }
  command <<<
    nw_stats filename__ \
      ~{if (format_l_columns) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_l_columns: "[lc]: format in lines (l) or columns (c). Default is l."
  }
  output {
    File out_stdout = stdout()
  }
}