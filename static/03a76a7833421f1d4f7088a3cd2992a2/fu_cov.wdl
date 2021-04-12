version 1.0

task Fucov {
  input {
    Float? min_cov
    Float? max_cov
    Int? min_len
    Int? max_len
    Int? top
    Boolean? sort
    Boolean? print_verbose_log
    String print
    String show
    String var_9
  }
  command <<<
    fu_cov \
      ~{print} \
      ~{show} \
      ~{var_9} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (print_verbose_log) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.0--h38613fd_1"
  }
  parameter_meta {
    min_cov: "Minimum coverage [default: 0.0]"
    max_cov: "Maximum coverage [default: 0.0]"
    min_len: "Minimum contig length [default: 0]"
    max_len: "Maximum contig length [default: 0]"
    top: "Print the first TOP sequences when using --sort [default: 0]"
    sort: "Store contigs in memory and sort them by descending coverage"
    print_verbose_log: "Print verbose log"
    print: ""
    show: ""
    var_9: ""
  }
  output {
    File out_stdout = stdout()
  }
}