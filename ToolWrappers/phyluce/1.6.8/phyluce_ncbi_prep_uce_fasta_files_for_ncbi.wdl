version 1.0

task PhyluceNcbiPrepUceFastaFilesForNcbi {
  command <<<
    phyluce_ncbi_prep_uce_fasta_files_for_ncbi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}