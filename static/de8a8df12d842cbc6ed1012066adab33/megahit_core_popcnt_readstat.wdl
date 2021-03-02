version 1.0

task MegahitCorePopcntReadstat {
  input {
    String cat
  }
  command <<<
    megahit_core_popcnt readstat \
      ~{cat}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}