version 1.0

task Mergeprocesssh {
  command <<<
    mergeprocess_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}