version 1.0

task Seqtk {
  command <<<
    seqtk
  >>>
  output {
    File out_stdout = stdout()
  }
}