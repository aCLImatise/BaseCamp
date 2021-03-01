version 1.0

task Novope2bedpl {
  command <<<
    novope2bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}