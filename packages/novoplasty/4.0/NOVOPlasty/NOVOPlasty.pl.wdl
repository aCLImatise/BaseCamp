version 1.0

task NOVOPlastypl {
  command <<<
    NOVOPlasty_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}