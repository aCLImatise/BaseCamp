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
    docker: "None"
  }
  parameter_meta {
    drugs: "NGS Platform (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}