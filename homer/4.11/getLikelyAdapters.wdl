version 1.0

task GetLikelyAdapters.pl {
  input {
    Boolean? len
    Boolean? number_reads_check
    Boolean? number_report_default
    Boolean? start
    Boolean? end
    String fast_q_file
  }
  command <<<
    getLikelyAdapters.pl \
      ~{fast_q_file} \
      ~{true="-len" false="" len} \
      ~{true="-n" false="" number_reads_check} \
      ~{true="-S" false="" number_report_default} \
      ~{true="-start" false="" start} \
      ~{true="-end" false="" end}
  >>>
  parameter_meta {
    len: "<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)"
    number_reads_check: "<#> (Number of reads to check for overrepresented oligos, default: 1e5)"
    number_report_default: "<#> (number of overrepresented oligos to report, default: 10)"
    start: "<#> (position to start looking for oligos, default: 0)"
    end: "<#> (last position to look for oligos, default: end of sequence)"
    fast_q_file: ""
  }
}