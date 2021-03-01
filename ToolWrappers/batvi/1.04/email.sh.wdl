version 1.0

task Emailsh {
  command <<<
    email_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}