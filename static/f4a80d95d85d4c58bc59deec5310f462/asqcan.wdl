version 1.0

task Asqcan {
  input {
    String? fast_q_dir
    String? output_directory
    String? blast_database
    String? threads
    String? max_memory
    Boolean? force
    Boolean? verbose
  }
  command <<<
    asqcan \
      ~{if defined(fast_q_dir) then ("--fastq-dir " +  '"' + fast_q_dir + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(blast_database) then ("--blast_database " +  '"' + blast_database + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    fast_q_dir: "Path to a directory with your interleaved fastq files."
    output_directory: "Path to the output directory. A directory will be created if one does not exist."
    blast_database: "Path to the local nt blast database. This pipeline does not require you to have a local copy of the nt database but without it you will not be able to use similarity data for blobtools. Similarity data adds significantly to the blobplot and blobtools table outputs of this pipeline. See https://blast.ncbi.nlm.n ih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE= Download to install a local nt database."
    threads: "Number of threads to use for multiprocessing."
    max_memory: "Maximum amount of RAM to assign to the pipeline in GB (Just the number)."
    force: "Overwrite files in the output directories."
    verbose: "Increase verbosity on command line output (n.b. verbose output is always saved to asqcan.log in the output directory)."
  }
}