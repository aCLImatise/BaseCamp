version 1.0

task MegahitToolkitReadstat {
  input {
    String cat
  }
  command <<<
    megahit_toolkit readstat \
      ~{cat}
  >>>
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}