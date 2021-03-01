version 1.0

task ClassifyContigspy {
  command <<<
    ClassifyContigs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}