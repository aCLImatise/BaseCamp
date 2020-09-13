version 1.0

task Gff3FileToBedpl {
  command <<<
    gff3_file_to_bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}