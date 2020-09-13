version 1.0

task Bamvalidate {
  command <<<
    bamvalidate
  >>>
  output {
    File out_stdout = stdout()
  }
}