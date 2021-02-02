version 1.0

task HaploToPlink {
  command <<<
    haploToPlink
  >>>
  output {
    File out_stdout = stdout()
  }
}