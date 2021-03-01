version 1.0

task Bubbleprocesserpy {
  command <<<
    bubbleprocesser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}