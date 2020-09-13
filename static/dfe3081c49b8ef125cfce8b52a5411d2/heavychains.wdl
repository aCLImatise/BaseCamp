version 1.0

task Heavychains {
  command <<<
    heavychains
  >>>
  output {
    File out_stdout = stdout()
  }
}