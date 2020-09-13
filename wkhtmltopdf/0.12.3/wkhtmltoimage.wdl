version 1.0

task Wkhtmltoimage {
  command <<<
    wkhtmltoimage
  >>>
  output {
    File out_stdout = stdout()
  }
}