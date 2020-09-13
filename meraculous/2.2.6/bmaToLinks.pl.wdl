version 1.0

task BmaToLinkspl {
  command <<<
    bmaToLinks_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}