version 1.0

task Genbank2gsipl {
  command <<<
    genbank2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}