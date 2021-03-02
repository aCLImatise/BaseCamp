version 1.0

task Lprsetupsh {
  command <<<
    lprsetup_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}