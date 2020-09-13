version 1.0

task Translatepl {
  command <<<
    translate_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}