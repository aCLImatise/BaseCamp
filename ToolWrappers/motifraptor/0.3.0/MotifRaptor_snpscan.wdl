version 1.0

task MotifRaptorSnpscan {
  input {
    String? indexed_genome_db
    Directory? pfm_folder
    Directory? motifscan_output
    Int? threads
  }
  command <<<
    MotifRaptor snpscan \
      ~{if defined(indexed_genome_db) then ("--indexed_genome_db " +  '"' + indexed_genome_db + '"') else ""} \
      ~{if defined(pfm_folder) then ("--pfm_folder " +  '"' + pfm_folder + '"') else ""} \
      ~{if defined(motifscan_output) then ("--motifscan_output " +  '"' + motifscan_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    indexed_genome_db: "indexed genome_database_folder"
    pfm_folder: "motif pmf files folder"
    motifscan_output: "Motif Scan Ouput Folder"
    threads: "number of threads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}