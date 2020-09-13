version 1.0

task Addtitpl {
  command <<<
    addtit_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}