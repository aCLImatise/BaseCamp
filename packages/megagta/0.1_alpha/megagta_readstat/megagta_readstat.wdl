version 1.0

task MegagtaReadstat {
  input {
    String cat
  }
  command <<<
    megagta readstat \
      ~{cat}
  >>>
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}