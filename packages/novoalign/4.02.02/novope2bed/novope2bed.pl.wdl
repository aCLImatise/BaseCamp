version 1.0

task Novope2bedpl {
  command <<<
    novope2bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}