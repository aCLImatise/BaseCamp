version 1.0

task SketchySurvey {
  command <<<
    sketchy survey
  >>>
  output {
    File out_stdout = stdout()
  }
}