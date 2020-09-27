version 1.0

task TrinotateSeqLoaderpl {
  command <<<
    TrinotateSeqLoader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}