version 1.0

task Splitmafpl {
  command <<<
    splitmaf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}