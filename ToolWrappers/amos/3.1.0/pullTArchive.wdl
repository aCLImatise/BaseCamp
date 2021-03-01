version 1.0

task PullTArchive {
  command <<<
    pullTArchive
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}