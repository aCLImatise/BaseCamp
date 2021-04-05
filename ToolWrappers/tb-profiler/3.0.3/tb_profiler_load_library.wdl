version 1.0

task TbprofilerLoadLibrary {
  input {
    String prefix
  }
  command <<<
    tb_profiler load_library \
      ~{prefix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0"
  }
  parameter_meta {
    prefix: "Prefix to the library files"
  }
  output {
    File out_stdout = stdout()
  }
}