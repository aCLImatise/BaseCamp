version 1.0

task RbtRecord {
  input {
    String rbt
    String? flags
  }
  command <<<
    rbt record_ \
      ~{rbt} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rbt: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}