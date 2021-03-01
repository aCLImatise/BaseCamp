version 1.0

task IteroCheckCheck {
  input {
    String it_ero
    String check
  }
  command <<<
    itero check check \
      ~{it_ero} \
      ~{check}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    it_ero: ""
    check: ""
  }
  output {
    File out_stdout = stdout()
  }
}