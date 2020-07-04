version 1.0

task Damageprofiler {
  input {
    String user
    String option
    String parser
  }
  command <<<
    damageprofiler \
      ~{user} \
      ~{option} \
      ~{parser}
  >>>
  parameter_meta {
    user: ""
    option: ""
    parser: ""
  }
}