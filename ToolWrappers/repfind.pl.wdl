version 1.0

task Repfindpl {
  command <<<
    repfind_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}