version 1.0

task Qdelaunay {
  command <<<
    qdelaunay
  >>>
  output {
    File out_stdout = stdout()
  }
}