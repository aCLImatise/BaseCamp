version 1.0

task MegahitCorePopcntReadstat {
  input {
    String cat
  }
  command <<<
    megahit_core_popcnt readstat \
      ~{cat}
  >>>
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}