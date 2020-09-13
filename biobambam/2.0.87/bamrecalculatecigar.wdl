version 1.0

task Bamrecalculatecigar {
  command <<<
    bamrecalculatecigar
  >>>
  output {
    File out_stdout = stdout()
  }
}