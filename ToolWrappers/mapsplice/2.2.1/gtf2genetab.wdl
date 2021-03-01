version 1.0

task Gtf2genetab {
  command <<<
    gtf2genetab
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}