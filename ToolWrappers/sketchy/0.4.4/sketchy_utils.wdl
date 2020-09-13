version 1.0

task SketchyUtils {
  command <<<
    sketchy utils
  >>>
  output {
    File out_stdout = stdout()
  }
}