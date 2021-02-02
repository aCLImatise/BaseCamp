version 1.0

task AlignmentBasicspy {
  command <<<
    AlignmentBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}