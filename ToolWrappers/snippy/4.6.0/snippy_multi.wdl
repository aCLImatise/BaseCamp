version 1.0

task Snippymulti {
  command <<<
    snippy_multi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}