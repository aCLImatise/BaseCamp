version 1.0

task TbprofilerLoadLibrary {
  input {
    String prefix
  }
  command <<<
    tb_profiler load_library \
      ~{prefix}
  >>>
  parameter_meta {
    prefix: "Prefix to the library files"
  }
  output {
    File out_stdout = stdout()
  }
}