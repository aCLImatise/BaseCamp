version 1.0

task Comparealignmentspy {
  command <<<
    compare_alignments_py
  >>>
  output {
    File out_stdout = stdout()
  }
}