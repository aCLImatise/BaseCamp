version 1.0

task GanonUpdate {
  input {
    Boolean? output_db_prefix
    Boolean? threads
    Boolean? specialization
    Boolean? seq_info_mode
    Boolean? seq_info_file
    Boolean? tax_dump_file
    Boolean? input_directory
    Boolean? input_extension
    Boolean? update_complete
    Boolean? write_seq_info_file
    Boolean? verbose
    Boolean? quiet
    String? db_prefix
    Boolean? input_reference_sequence
    String? input_files
  }
  command <<<
    ganon update \
      ~{input_files} \
      ~{if (output_db_prefix) then "--output-db-prefix" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (specialization) then "--specialization" else ""} \
      ~{if (seq_info_mode) then "--seq-info-mode" else ""} \
      ~{if (seq_info_file) then "--seq-info-file" else ""} \
      ~{if (tax_dump_file) then "--taxdump-file" else ""} \
      ~{if (input_directory) then "--input-directory" else ""} \
      ~{if (input_extension) then "--input-extension" else ""} \
      ~{if (update_complete) then "--update-complete" else ""} \
      ~{if (write_seq_info_file) then "--write-seq-info-file" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(db_prefix) then ("--db-prefix " +  '"' + db_prefix + '"') else ""} \
      ~{if (input_reference_sequence) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    output_db_prefix: "Output database prefix (.ibf, .map, .tax, .gnn).\\nDefault: overwrite current --db-prefix"
    threads: "Number of sub-processes/threads to use. Default: 2"
    specialization: "Change specialization mode. Can only be used if\\ndatabase was built with some specialization. Options:\\n[sequence,file,assembly,custom]. \\\"sequence\\\" will use\\nsequence accession as target. \\\"file\\\" uses the filename\\nas target. \\\"assembly\\\" will use assembly info from NCBI\\nas target. \\\"custom\\\" uses the 4th column of the file\\nprovided in --seq-info-file as target."
    seq_info_mode: "[ [ ...]]\\nAutomatic mode to retrieve tax. info and seq. length.\\n[auto,eutils] or one or more accession2taxid files\\nfrom NCBI [nucl_gb nucl_wgs nucl_est nucl_gss pdb prot\\ndead_nucl dead_wgs dead_prot]. auto will either use\\neutils for less than 50000 input sequences or nucl_gb\\nnucl_wgs. Alternatively a file can be directly\\nprovided (see --seq-info-file). Default: auto"
    seq_info_file: "Tab-separated file with sequence information (seqid\\n<tab> seq.len <tab> taxid [<tab> assembly id])\\n[Mutually exclusive --seq-info]"
    tax_dump_file: "[ [ ...]]\\nForce use of a specific version of the\\n(taxdump.tar.gz) or (nodes.dmp names.dmp [merged.dmp])\\nfile(s) from NCBI Taxonomy (otherwise it will be\\nautomatically downloaded)"
    input_directory: "Directory containing input files"
    input_extension: "Extension of files to use with --input-directory\\n(provide it without * expansion, e.g. \\\".fna.gz\\\")"
    update_complete: "Update adding and removing sequences. Input files\\nshould represent the complete updated set of\\nreferences, not only new sequences."
    write_seq_info_file: "Write sequence information to DB_PREFIX.seqinfo.txt"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode"
    db_prefix: "Database input prefix (.ibf, .map, .tax, .gnn)"
    input_reference_sequence: "[INPUT_FILES [INPUT_FILES ...]], --input-files [INPUT_FILES [INPUT_FILES ...]]\\nInput reference sequence fasta files [.gz] to be\\nincluded to the database. Complete set of updated\\nsequences should be provided when using --update-\\ncomplete\\n"
    input_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}