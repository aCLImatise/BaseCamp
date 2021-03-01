version 1.0

task MergeContigspy {
  command <<<
    MergeContigs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}