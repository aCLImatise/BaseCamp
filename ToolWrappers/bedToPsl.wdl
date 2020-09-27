version 1.0

task BedToPsl {
  command <<<
    bedToPsl
  >>>
  output {
    File out_stdout = stdout()
  }
}