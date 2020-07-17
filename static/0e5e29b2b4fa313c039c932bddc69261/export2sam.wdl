version 1.0

task Export2sam.pl {
  input {
    File? read_one
    File? read_two
    Boolean? no_filter
    Boolean? q_log_odds
  }
  command <<<
    export2sam.pl \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{true="--nofilter" false="" no_filter} \
      ~{true="--qlogodds" false="" q_log_odds}
  >>>
  parameter_meta {
    read_one: "read1 export file or '-' for stdin (mandatory) (file may be gzipped with \".gz\" extension)"
    read_two: "read2 export file or '-' for stdin (file may be gzipped with \".gz\" extension)"
    no_filter: "include reads that failed the basecaller purity filter"
    q_log_odds: "assume export file(s) use logodds quality values as reported by OLB (Pipeline) prior to v1.3 (default: phred quality values)"
  }
}