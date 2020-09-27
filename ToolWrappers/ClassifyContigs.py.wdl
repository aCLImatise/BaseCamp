version 1.0

task ClassifyContigspy {
  command <<<
    ClassifyContigs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}