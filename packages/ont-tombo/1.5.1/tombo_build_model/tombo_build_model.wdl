version 1.0

task TomboBuildModel {
  command <<<
    tombo build_model
  >>>
  output {
    File out_stdout = stdout()
  }
}