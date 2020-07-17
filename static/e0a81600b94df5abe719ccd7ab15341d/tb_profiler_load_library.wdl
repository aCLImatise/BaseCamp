version 1.0

task TbProfilerLoadLibrary {
  input {
    String prefix
  }
  command <<<
    tb-profiler load_library \
      ~{prefix}
  >>>
  parameter_meta {
    prefix: "Prefix to the library files"
  }
}