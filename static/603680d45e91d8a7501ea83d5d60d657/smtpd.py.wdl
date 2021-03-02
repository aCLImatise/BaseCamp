version 1.0

task Smtpdpy {
  command <<<
    smtpd_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}