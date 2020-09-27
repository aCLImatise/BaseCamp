version 1.0

task BubbleFinder2pl {
  command <<<
    _bubbleFinder2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}