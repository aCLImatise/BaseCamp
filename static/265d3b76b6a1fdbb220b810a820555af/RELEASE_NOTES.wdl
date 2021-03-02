version 1.0

task RELEASENOTES {
  command <<<
    RELEASE_NOTES
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}