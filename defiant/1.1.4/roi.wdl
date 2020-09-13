version 1.0

task Roi {
  command <<<
    roi
  >>>
  output {
    File out_stdout = stdout()
  }
}