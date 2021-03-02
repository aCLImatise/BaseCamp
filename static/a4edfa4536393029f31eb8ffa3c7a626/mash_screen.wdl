version 1.0

task MashScreen {
  input {
    Int? parallelism_many_threads
    Boolean? winnertakesall_strategy_willbe
    Int? minimum_identity_report
    Int? maximum_pvalue_report
    String option
  }
  command <<<
    mash screen \
      ~{option} \
      ~{if defined(parallelism_many_threads) then ("-p " +  '"' + parallelism_many_threads + '"') else ""} \
      ~{if (winnertakesall_strategy_willbe) then "-w" else ""} \
      ~{if defined(minimum_identity_report) then ("-i " +  '"' + minimum_identity_report + '"') else ""} \
      ~{if defined(maximum_pvalue_report) then ("-v " +  '"' + maximum_pvalue_report + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parallelism_many_threads: "Parallelism. This many threads will be spawned for processing. [1]"
    winnertakesall_strategy_willbe: "Winner-takes-all strategy for identity estimates. After counting\\nhashes for each query, hashes that appear in multiple queries will\\nbe removed from all except the one with the best identity (ties\\nbroken by larger query), and other identities will be reduced. This\\nremoves output redundancy, providing a rough compositional outline."
    minimum_identity_report: "Minimum identity to report. Inclusive unless set to zero, in which\\ncase only identities greater than zero (i.e. with at least one\\nshared hash) will be reported. Set to -1 to output everything.\\n(-1-1) [0]"
    maximum_pvalue_report: "Maximum p-value to report. (0-1) [1.0]"
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}