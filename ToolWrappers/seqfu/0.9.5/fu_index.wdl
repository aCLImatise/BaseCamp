version 1.0

task Fuindex {
  input {
    Int? max_reads
    Float? min_ratio
    Boolean? print_verbose_log
    String fast_q
    String print
    String show
    String var_6
  }
  command <<<
    fu_index \
      ~{fast_q} \
      ~{print} \
      ~{show} \
      ~{var_6} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(min_ratio) then ("--min-ratio " +  '"' + min_ratio + '"') else ""} \
      ~{if (print_verbose_log) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.5--h38613fd_0"
  }
  parameter_meta {
    max_reads: "Evaluate INT number of reads [default: 1000]"
    min_ratio: "Minimum ratio of matches of the top index [default: 0.85]"
    print_verbose_log: "Print verbose log"
    fast_q: ""
    print: ""
    show: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}