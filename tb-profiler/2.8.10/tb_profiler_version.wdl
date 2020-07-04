version 1.0

task TbProfilerVersion {
  input {
    String tb_profiler
  }
  command <<<
    tb-profiler version \
      ~{tb_profiler}
  >>>
  parameter_meta {
    tb_profiler: ""
  }
}