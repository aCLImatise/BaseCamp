version 1.0

task Rawtoolssh {
  command <<<
    rawtools_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}