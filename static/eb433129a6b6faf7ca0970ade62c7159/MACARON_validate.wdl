version 1.0

task MACARONValidate {
  command <<<
    MACARON_validate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}