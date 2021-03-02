version 1.0

task Comparealignmentspy {
  command <<<
    compare_alignments_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}