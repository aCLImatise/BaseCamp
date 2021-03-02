version 1.0

task MetamakeDemospl {
  command <<<
    MetamakeDemos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}