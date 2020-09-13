version 1.0

task SketchyOnline {
  command <<<
    sketchy online
  >>>
  output {
    File out_stdout = stdout()
  }
}