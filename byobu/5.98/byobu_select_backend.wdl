version 1.0

task Byobuselectbackend {
  command <<<
    byobu_select_backend
  >>>
  output {
    File out_stdout = stdout()
  }
}