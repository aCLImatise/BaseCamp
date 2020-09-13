version 1.0

task BubbleScoutpl {
  command <<<
    bubbleScout_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}