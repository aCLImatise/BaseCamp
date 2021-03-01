version 1.0

task StartTasselpl {
  command <<<
    start_tassel_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}