version 1.0

task Emailsh {
  command <<<
    email_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}