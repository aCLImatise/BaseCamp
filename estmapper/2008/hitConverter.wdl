version 1.0

task HitConverter {
  command <<<
    hitConverter
  >>>
  output {
    File out_stdout = stdout()
  }
}