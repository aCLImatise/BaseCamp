version 1.0

task RefStatspl {
  input {
    Boolean? specify_bin_size
    Boolean? more_options
    Boolean? options
  }
  command <<<
    ref_stats_pl \
      ~{if (specify_bin_size) then "-i" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    specify_bin_size: "#          specify bin size for histogram (default 100)"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}