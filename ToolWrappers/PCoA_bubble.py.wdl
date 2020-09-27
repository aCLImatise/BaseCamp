version 1.0

task PCoABubblepy {
  command <<<
    PCoA_bubble_py
  >>>
  output {
    File out_stdout = stdout()
  }
}