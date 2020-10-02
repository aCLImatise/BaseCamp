version 1.0

task SequanaMapping {
  input {
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_mapping \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a}
  >>>
  parameter_meta {
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}