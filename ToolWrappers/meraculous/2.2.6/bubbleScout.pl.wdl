version 1.0

task BubbleScoutpl {
  command <<<
    bubbleScout_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}