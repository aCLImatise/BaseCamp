version 1.0

task Ktrimfrg {
  command <<<
    ktrimfrg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}