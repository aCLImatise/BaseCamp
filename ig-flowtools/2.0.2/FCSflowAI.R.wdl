version 1.0

task FCSflowAIR {
  command <<<
    FCSflowAI_R
  >>>
  output {
    File out_stdout = stdout()
  }
}