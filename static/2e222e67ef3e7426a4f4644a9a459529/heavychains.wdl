version 1.0

task Heavychains {
  command <<<
    heavychains
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}