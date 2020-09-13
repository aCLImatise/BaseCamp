version 1.0

task Exiftool {
  command <<<
    exiftool
  >>>
  output {
    File out_stdout = stdout()
  }
}