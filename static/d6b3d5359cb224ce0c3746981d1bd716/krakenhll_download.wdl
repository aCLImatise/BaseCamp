version 1.0

task Krakenhlldownload {
  input {
    Directory? folder_files_downloaded
    Directory? db
    Boolean? threads
    Boolean? rsync
    Boolean? overwrite
    Boolean? verbose
    String? term
    Int? mappings
    Float? ret_mode
    Int? ret_type
    String? fna
    Boolean? filter_unplaced_sequences
    Boolean? modify_sequence_header
    Boolean? dust
    Boolean? include_viral_neighbors
  }
  command <<<
    krakenhll_download \
      ~{if defined(folder_files_downloaded) then ("-o " +  '"' + folder_files_downloaded + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (rsync) then "--rsync" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(term) then ("--term " +  '"' + term + '"') else ""} \
      ~{if defined(mappings) then ("--mappings " +  '"' + mappings + '"') else ""} \
      ~{if defined(ret_mode) then ("--retmode " +  '"' + ret_mode + '"') else ""} \
      ~{if defined(ret_type) then ("--rettype " +  '"' + ret_type + '"') else ""} \
      ~{if defined(fna) then ("--fna " +  '"' + fna + '"') else ""} \
      ~{if (filter_unplaced_sequences) then "-u" else ""} \
      ~{if (modify_sequence_header) then "-l" else ""} \
      ~{if (dust) then "--dust" else ""} \
      ~{if (include_viral_neighbors) then "--include-viral-neighbors" else ""}
  >>>
  parameter_meta {
    folder_files_downloaded: "Folder to which the files are downloaded. Default: '.'"
    db: "Alternative to -o: Download to <directory>/{library,taxonomy}."
    threads: "<# of threads>  Number of processes when downloading (uses xargs). Default: '5'"
    rsync: "Download using rsync."
    overwrite: "Redownload and overwrite files with the same name."
    verbose: "Be verbose."
    term: "Download all sequences returned from a NCBI nucleotide search."
    mappings: "Try mapping accession IDs using the mapping files for the specified divisions (comma-separated).\\nDefault: nucl_gb. Possible values: nucl_est, nucl_gb, nucl_gss, nucl_wgs.\\nDownloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
    ret_mode: "Specify return mode. Possible options: text (default), asn.1, xml."
    ret_type: "Specify return type for download. Note that no mapping files are generated when\\nrettype is specified. Possible options: fasta (default), gb, gbc, native, acc, seqid, ft, gbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and fasta files are split, while the other formats stay in chunks.\\nDownloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
    fna: "Comma-separated list of sequence types, including genomic, rna, rna_from_genomic, cds_from_genomic. Default: genomic.\\nSee the assembly project FTP site for available sequences"
    filter_unplaced_sequences: "Filter unplaced sequences."
    modify_sequence_header: "Modify sequence header to include taxonomy ID for Kraken (i.e. add '>kraken:taxid|TAXID' to each sequence)."
    dust: "Mask low-complexity regions using dustmasker."
    include_viral_neighbors: "Include viral neighbors. Deprecated. Add 'viral-neighbors' to the arguments, instead."
  }
  output {
    File out_stdout = stdout()
  }
}