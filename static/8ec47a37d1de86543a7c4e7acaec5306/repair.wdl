version 1.0

task Repair.sh {
  input {
    String names_dot
  }
  command <<<
    repair.sh \
      ~{names_dot}
  >>>
  parameter_meta {
    names_dot: "Uses much more memory than 'fint' mode."
  }
}