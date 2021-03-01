version 1.0

task TrainStartPWMpl {
  command <<<
    train_start_PWM_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}