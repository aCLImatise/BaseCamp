version 1.0

task TbprofilerPerformancepyCalculate {
  input {
    String? dir
    Float? miss
    String? drugs
    String samples
    String dst
    String bed
  }
  command <<<
    tbprofiler_performance_py calculate \
      ~{samples} \
      ~{dst} \
      ~{bed} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(miss) then ("--miss " +  '"' + miss + '"') else ""} \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    dir: "NGS Platform (default: results/)"
    miss: "Fraction of gene missing to call gDST as missing\\n(default: 0.1)"
    drugs: "NGS Platform (default: None)"
    samples: "NGS Platform"
    dst: "NGS Platform"
    bed: "NGS Platform"
  }
  output {
    File out_stdout = stdout()
  }
}