version 1.0

task ArrowStatusFindStatusById {
  input {
    String id_number
  }
  command <<<
    arrow status findStatusById \
      ~{id_number}
  >>>
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}