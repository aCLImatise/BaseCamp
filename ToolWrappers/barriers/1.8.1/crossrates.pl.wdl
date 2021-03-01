version 1.0

task Crossratespl {
  command <<<
    crossrates_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}