version 1.0

task Findbpall {
  command <<<
    findbp_all
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}