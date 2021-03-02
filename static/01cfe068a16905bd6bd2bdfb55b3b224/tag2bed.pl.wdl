version 1.0

task Tag2bedpl {
  command <<<
    tag2bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}