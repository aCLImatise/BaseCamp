version 1.0

task Biopet {
  command <<<
    biopet
  >>>
  output {
    File out_stdout = stdout()
  }
}