version 1.0

task Sap {
  input {
    Int file_one_dot_pdb
    Int file_two_dot_pdb
    Int one_two_one
  }
  command <<<
    sap \
      ~{file_one_dot_pdb} \
      ~{file_two_dot_pdb} \
      ~{one_two_one}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sap:1.1.3--h516909a_0"
  }
  parameter_meta {
    file_one_dot_pdb: ""
    file_two_dot_pdb: ""
    one_two_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}