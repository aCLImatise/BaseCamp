version 1.0

task Bamview {
  command <<<
    bamview
  >>>
  output {
    File out_stdout = stdout()
  }
}