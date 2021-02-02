version 1.0

task ContigsMerger {
  command <<<
    ContigsMerger
  >>>
  output {
    File out_stdout = stdout()
  }
}