version 1.0

task KmcToolsTransform {
  input {
    Boolean? ci
    Boolean? cx
    Boolean? cs
    Boolean? _sorted_output
    String sort
    String reduce
    String compact
    String histogram
    String dump
  }
  command <<<
    kmc_tools transform \
      ~{sort} \
      ~{reduce} \
      ~{compact} \
      ~{histogram} \
      ~{dump} \
      ~{if (ci) then "-ci" else ""} \
      ~{if (cx) then "-cx" else ""} \
      ~{if (cs) then "-cs" else ""} \
      ~{if (_sorted_output) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ci: "<value> - exclude k-mers occurring less than <value> times"
    cx: "<value> - exclude k-mers occurring more of than <value> times"
    cs: "<value> - maximal value of a counter"
    _sorted_output: "- sorted output"
    sort: "- converts database produced by KMC2.x to KMC1.x database format (which contains k-mers in sorted order)"
    reduce: "- exclude too rare and too frequent k-mers"
    compact: "- remove counters of k-mers"
    histogram: "- produce histogram of k-mers occurrences"
    dump: "- produce text dump of kmc database"
  }
  output {
    File out_stdout = stdout()
  }
}