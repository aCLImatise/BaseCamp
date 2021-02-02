version 1.0

task Seqxrefget {
  command <<<
    seqxrefget
  >>>
  output {
    File out_stdout = stdout()
  }
}