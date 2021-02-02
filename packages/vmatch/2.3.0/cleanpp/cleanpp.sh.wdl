version 1.0

task Cleanppsh {
  command <<<
    cleanpp_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}