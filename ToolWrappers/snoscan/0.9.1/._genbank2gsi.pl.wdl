version 1.0

task _genbank2gsipl {
  command <<<
    __genbank2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}