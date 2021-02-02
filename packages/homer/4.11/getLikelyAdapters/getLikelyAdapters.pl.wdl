version 1.0

task GetLikelyAdapterspl {
  input {
    Boolean? len
    Boolean? number_reads_e
    Boolean? number_report_default
    Boolean? start
    Boolean? end
    File fast_q_file
  }
  command <<<
    getLikelyAdapters_pl \
      ~{fast_q_file} \
      ~{if (len) then "-len" else ""} \
      ~{if (number_reads_e) then "-n" else ""} \
      ~{if (number_report_default) then "-S" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""}
  >>>
  parameter_meta {
    len: "<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)"
    number_reads_e: "<#> (Number of reads to check for overrepresented oligos, default: 1e5)"
    number_report_default: "<#> (number of overrepresented oligos to report, default: 10)"
    start: "<#> (position to start looking for oligos, default: 0)"
    end: "<#> (last position to look for oligos, default: end of sequence)"
    fast_q_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}