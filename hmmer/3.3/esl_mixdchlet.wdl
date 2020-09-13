version 1.0

task Eslmixdchlet {
  command <<<
    esl_mixdchlet
  >>>
  output {
    File out_stdout = stdout()
  }
}