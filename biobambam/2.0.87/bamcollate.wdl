version 1.0

task Bamcollate {
  command <<<
    bamcollate
  >>>
  output {
    File out_stdout = stdout()
  }
}