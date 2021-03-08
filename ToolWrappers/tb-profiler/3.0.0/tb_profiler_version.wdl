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
    docker: "quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0"
  }
  parameter_meta {
    tb_profiler: ""
  }
  output {
    File out_stdout = stdout()
  }
}