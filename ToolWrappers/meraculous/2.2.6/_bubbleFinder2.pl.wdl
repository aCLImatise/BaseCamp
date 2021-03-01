version 1.0

task BubbleFinder2pl {
  command <<<
    _bubbleFinder2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}