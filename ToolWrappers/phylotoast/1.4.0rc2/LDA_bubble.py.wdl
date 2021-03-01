version 1.0

task LDABubblepy {
  command <<<
    LDA_bubble_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}