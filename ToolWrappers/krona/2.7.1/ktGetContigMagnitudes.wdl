version 1.0

task KtGetContigMagnitudes {
  command <<<
    ktGetContigMagnitudes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}