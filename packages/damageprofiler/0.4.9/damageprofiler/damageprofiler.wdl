version 1.0

task Damageprofiler {
  input {
    String user
    String parser
  }
  command <<<
    damageprofiler \
      ~{user} \
      ~{parser}
  >>>
  parameter_meta {
    user: ""
    parser: ""
  }
  output {
    File out_stdout = stdout()
  }
}