version 1.0

task Unixlprsh {
  command <<<
    unix_lpr_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}