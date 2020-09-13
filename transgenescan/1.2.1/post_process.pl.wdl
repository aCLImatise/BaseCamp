version 1.0

task PostProcesspl {
  command <<<
    post_process_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}