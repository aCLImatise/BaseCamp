version 1.0

task IteroAssembleCommand {
  input {
    String it_ero
    String assemble
  }
  command <<<
    itero assemble command \
      ~{it_ero} \
      ~{assemble}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    it_ero: ""
    assemble: ""
  }
  output {
    File out_stdout = stdout()
  }
}