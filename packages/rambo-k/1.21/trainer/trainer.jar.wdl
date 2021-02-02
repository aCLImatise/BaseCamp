version 1.0

task Trainerjar {
  command <<<
    trainer_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}