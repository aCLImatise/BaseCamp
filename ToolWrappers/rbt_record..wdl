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
  parameter_meta {
    rbt: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}