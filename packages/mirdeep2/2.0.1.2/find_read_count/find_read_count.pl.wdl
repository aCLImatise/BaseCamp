version 1.0

task FindReadCountpl {
  command <<<
    find_read_count_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}