version 1.0

task Bbmergeautosh {
  command <<<
    bbmerge_auto_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}