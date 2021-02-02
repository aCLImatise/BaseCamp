version 1.0

task Blast2sampl {
  command <<<
    blast2sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}