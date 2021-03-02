version 1.0

task BubblePopperpl {
  command <<<
    bubblePopper_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}