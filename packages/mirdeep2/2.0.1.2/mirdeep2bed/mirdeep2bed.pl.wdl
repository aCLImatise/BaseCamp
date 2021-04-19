version 1.0

task Mirdeep2bedpl {
  command <<<
    mirdeep2bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}