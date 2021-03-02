version 1.0

task TbprofilerPerformancepyAnalyseBed {
  input {
    Boolean? it_ol
    String? dir
    String tb_profiler_performance_do_tpy
    String analyse
    String drug
    String bed
  }
  command <<<
    tbprofiler_performance_py analyse bed \
      ~{tb_profiler_performance_do_tpy} \
      ~{analyse} \
      ~{drug} \
      ~{bed} \
      ~{if (it_ol) then "--itol" else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    it_ol: ""
    dir: ""
    tb_profiler_performance_do_tpy: ""
    analyse: ""
    drug: ""
    bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}