version 1.0

task TbprofilerPerformancepyPrint {
  input {
    String? drugs
  }
  command <<<
    tbprofiler_performance_py print \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    drugs: "NGS Platform (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}