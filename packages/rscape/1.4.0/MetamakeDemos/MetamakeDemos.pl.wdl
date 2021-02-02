version 1.0

task MetamakeDemospl {
  command <<<
    MetamakeDemos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}