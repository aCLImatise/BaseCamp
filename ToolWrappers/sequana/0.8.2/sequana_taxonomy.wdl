version 1.0

task SequanaTaxonomy {
  input {
    Boolean? databases
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_taxonomy \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if (databases) then "--databases" else ""}
  >>>
  parameter_meta {
    databases: "/home/user/.config/sequana/kraken_toydb\\n--show-html --thread 4"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}