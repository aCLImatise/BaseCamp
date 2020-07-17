version 1.0

task Oligoscreen {
  input {
    String list_file
    String report_file
  }
  command <<<
    oligoscreen \
      ~{list_file} \
      ~{report_file}
  >>>
  parameter_meta {
    list_file: ""
    report_file: ""
  }
}