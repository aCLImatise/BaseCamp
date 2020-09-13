version 1.0

task Tag2bedpl {
  command <<<
    tag2bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}