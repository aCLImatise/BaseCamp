version 1.0

task PostProcesspl {
  command <<<
    post_process_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}