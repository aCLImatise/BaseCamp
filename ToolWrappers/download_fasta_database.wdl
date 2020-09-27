version 1.0

task DownloadFastaDatabase {
  command <<<
    download_fasta_database
  >>>
  output {
    File out_stdout = stdout()
  }
}