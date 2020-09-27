version 1.0

task Bamclip {
  command <<<
    bamclip
  >>>
  output {
    File out_stdout = stdout()
  }
}