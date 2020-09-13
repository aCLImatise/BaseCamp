version 1.0

task Scaladocbat {
  command <<<
    scaladoc_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}