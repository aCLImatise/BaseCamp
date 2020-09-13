version 1.0

task Gff3FileToProteinspl {
  command <<<
    gff3_file_to_proteins_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}