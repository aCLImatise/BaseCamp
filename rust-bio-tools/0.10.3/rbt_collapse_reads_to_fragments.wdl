version 1.0

task RbtCollapsereadstofragments {
  command <<<
    rbt collapse_reads_to_fragments
  >>>
  output {
    File out_stdout = stdout()
  }
}