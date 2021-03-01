version 1.0

task Trainerjar {
  command <<<
    trainer_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}