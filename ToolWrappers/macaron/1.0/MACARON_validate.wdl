version 1.0

task MACARONValidate {
  command <<<
    MACARON_validate
  >>>
  output {
    File out_stdout = stdout()
  }
}