version 1.0

task SketchyFeature {
  command <<<
    sketchy feature
  >>>
  output {
    File out_stdout = stdout()
  }
}