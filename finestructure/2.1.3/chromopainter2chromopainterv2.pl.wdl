version 1.0

task Chromopainter2chromopainterv2pl {
  command <<<
    chromopainter2chromopainterv2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}