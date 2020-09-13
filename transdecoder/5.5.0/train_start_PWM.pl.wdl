version 1.0

task TrainStartPWMpl {
  command <<<
    train_start_PWM_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}