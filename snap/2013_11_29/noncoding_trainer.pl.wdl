version 1.0

task Noncodingtrainerpl {
  command <<<
    noncoding_trainer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}