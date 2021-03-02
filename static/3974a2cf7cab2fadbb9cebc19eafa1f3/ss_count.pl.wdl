version 1.0

task Sscountpl {
  command <<<
    ss_count_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}