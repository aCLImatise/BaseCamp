version 1.0

task ClstrSizeStatpl {
  command <<<
    clstr_size_stat_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}