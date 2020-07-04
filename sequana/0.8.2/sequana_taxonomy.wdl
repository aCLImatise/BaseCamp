version 1.0

task SequanaTaxonomy {
  input {
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_taxonomy \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a}
  >>>
  parameter_meta {
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}