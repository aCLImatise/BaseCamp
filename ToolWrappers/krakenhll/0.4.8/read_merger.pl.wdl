version 1.0

task ReadMergerpl {
  command <<<
    read_merger_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}