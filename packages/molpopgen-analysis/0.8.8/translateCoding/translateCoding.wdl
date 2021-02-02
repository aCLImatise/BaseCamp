version 1.0

task TranslateCoding {
  command <<<
    translateCoding
  >>>
  output {
    File out_stdout = stdout()
  }
}