version 1.0

task Fixfrg {
  command <<<
    fixfrg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}