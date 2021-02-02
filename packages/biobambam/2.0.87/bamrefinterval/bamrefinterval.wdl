version 1.0

task Bamrefinterval {
  command <<<
    bamrefinterval
  >>>
  output {
    File out_stdout = stdout()
  }
}