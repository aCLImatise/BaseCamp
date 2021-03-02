version 1.0

task KtGetLibPath {
  command <<<
    ktGetLibPath
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}