version 1.0

task MegahitCoreNoHwAccelReadstat {
  input {
    String cat
  }
  command <<<
    megahit_core_no_hw_accel readstat \
      ~{cat}
  >>>
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}