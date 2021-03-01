version 1.0

task Haploconduct {
  input {
    String program
  }
  command <<<
    haploconduct \
      ~{program}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program: ""
  }
  output {
    File out_stdout = stdout()
  }
}