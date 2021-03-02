version 1.0

task PCoABubblepy {
  command <<<
    PCoA_bubble_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}