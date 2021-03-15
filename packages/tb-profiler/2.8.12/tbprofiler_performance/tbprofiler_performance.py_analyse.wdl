version 1.0

task TbprofilerPerformancepyAnalyse {
  input {
    String? dir
    Boolean? it_ol
  }
  command <<<
    tbprofiler_performance_py analyse \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (it_ol) then "--itol" else ""}
  >>>
  parameter_meta {
    dir: "NGS Platform (default: results/)"
    it_ol: "NGS Platform (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}