version 1.0

task Blast2homfilepl {
  command <<<
    blast2homfile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}