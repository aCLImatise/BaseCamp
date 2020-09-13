version 1.0

task Bamcollate2 {
  command <<<
    bamcollate2
  >>>
  output {
    File out_stdout = stdout()
  }
}