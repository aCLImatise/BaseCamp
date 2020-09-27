version 1.0

task Smtpdpy {
  command <<<
    smtpd_py
  >>>
  output {
    File out_stdout = stdout()
  }
}