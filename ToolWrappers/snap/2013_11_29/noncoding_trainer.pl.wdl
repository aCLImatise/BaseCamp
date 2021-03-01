version 1.0

task Noncodingtrainerpl {
  command <<<
    noncoding_trainer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}