version 1.0

task MergeContigspy {
  command <<<
    MergeContigs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}