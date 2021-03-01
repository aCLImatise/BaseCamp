version 1.0

task FCSflowAIR {
  command <<<
    FCSflowAI_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}