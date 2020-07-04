version 1.0

task TbprofilerPerformance.pyAnalyseBed {
  input {
    String? dir
    Boolean? it_ol
    String tb_profiler_performance_do_tpy
    String analyse
    String drug
    String bed
  }
  command <<<
    tbprofiler_performance.py analyse bed \
      ~{tb_profiler_performance_do_tpy} \
      ~{analyse} \
      ~{drug} \
      ~{bed} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{true="--itol" false="" it_ol}
  >>>
  parameter_meta {
    dir: ""
    it_ol: ""
    tb_profiler_performance_do_tpy: ""
    analyse: ""
    drug: ""
    bed: ""
  }
}