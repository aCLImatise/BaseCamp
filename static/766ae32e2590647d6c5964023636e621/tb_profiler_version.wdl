version 1.0

task TbprofilerVersion {
  input {
    String tb_profiler
  }
  command <<<
    tb_profiler version \
      ~{tb_profiler}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tb_profiler: ""
  }
  output {
    File out_stdout = stdout()
  }
}