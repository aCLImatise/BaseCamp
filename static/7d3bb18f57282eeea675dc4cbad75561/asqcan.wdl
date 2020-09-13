version 1.0

task Asqcan {
  input {
    File? fast_q_dir
    Directory? output_directory
    File? blast_database
    Int? threads
    Int? max_memory
    Boolean? force
    Directory? verbose
  }
  command <<<
    asqcan \
      ~{if defined(fast_q_dir) then ("--fastq-dir " +  '"' + fast_q_dir + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(blast_database) then ("--blast_database " +  '"' + blast_database + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    fast_q_dir: "Path to a directory with your interleaved fastq files."
    output_directory: "Path to the output directory. A directory will be\\ncreated if one does not exist."
    blast_database: "Path to the local nt blast database. This pipeline\\ndoes not require you to have a local copy of the nt\\ndatabase but without it you will not be able to use\\nsimilarity data for blobtools. Similarity data adds\\nsignificantly to the blobplot and blobtools table\\noutputs of this pipeline. See https://blast.ncbi.nlm.n\\nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=\\nDownload to install a local nt database."
    threads: "Number of threads to use for multiprocessing."
    max_memory: "Maximum amount of RAM to assign to the pipeline in GB\\n(Just the number)."
    force: "Overwrite files in the output directories."
    verbose: "Increase verbosity on command line output (n.b.\\nverbose output is always saved to asqcan.log in the\\noutput directory).\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_verbose = "${in_verbose}"
  }
}