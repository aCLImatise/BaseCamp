version 1.0

task Bed2tagpl {
  command <<<
    bed2tag_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}