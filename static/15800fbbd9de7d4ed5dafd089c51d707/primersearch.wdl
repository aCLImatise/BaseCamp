version 1.0

task Primersearch {
  command <<<
    primersearch
  >>>
  output {
    File out_stdout = stdout()
  }
}