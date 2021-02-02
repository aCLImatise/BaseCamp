version 1.0

task Sketchyrs {
  command <<<
    sketchy_rs
  >>>
  output {
    File out_stdout = stdout()
  }
}