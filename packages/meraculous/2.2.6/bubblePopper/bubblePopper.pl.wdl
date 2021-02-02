version 1.0

task BubblePopperpl {
  command <<<
    bubblePopper_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}