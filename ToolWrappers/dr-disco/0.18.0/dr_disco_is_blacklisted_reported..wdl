version 1.0

task DrdiscoIsblacklistedReported {
  input {
    String dr_disco
    String is_blacklisted
    Int pos_one
    Int? pos_two
  }
  command <<<
    dr_disco is_blacklisted reported_ \
      ~{dr_disco} \
      ~{is_blacklisted} \
      ~{pos_one} \
      ~{pos_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dr_disco: ""
    is_blacklisted: ""
    pos_one: ""
    pos_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}