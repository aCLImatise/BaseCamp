version 1.0

task LDABubblepy {
  command <<<
    LDA_bubble_py
  >>>
  output {
    File out_stdout = stdout()
  }
}