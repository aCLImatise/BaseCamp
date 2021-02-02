version 1.0

task Byobustatusdetail {
  command <<<
    byobu_status_detail
  >>>
  output {
    File out_stdout = stdout()
  }
}