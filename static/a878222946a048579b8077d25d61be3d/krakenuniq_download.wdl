version 1.0

task Krakenuniqdownload {
  input {
    Directory? folder_files_downloaded
    Directory? db
    Boolean? threads
    Boolean? rsync
    Boolean? overwrite
    Boolean? verbose
    Boolean? dust
    Int? min_seq_len
    Int? search
    Int? ac
    File? mapping_file
    Float? ret_mode
    String? ret_type
    String? tax_a
    Boolean? exclude_environmental_tax_a
    String? fna
    Boolean? filter_unplaced_sequences
  }
  command <<<
    krakenuniq_download \
      ~{if defined(folder_files_downloaded) then ("-o " +  '"' + folder_files_downloaded + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (rsync) then "--rsync" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (dust) then "--dust" else ""} \
      ~{if defined(min_seq_len) then ("--min-seq-len " +  '"' + min_seq_len + '"') else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""} \
      ~{if defined(ac) then ("--ac " +  '"' + ac + '"') else ""} \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(ret_mode) then ("--retmode " +  '"' + ret_mode + '"') else ""} \
      ~{if defined(ret_type) then ("--rettype " +  '"' + ret_type + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if (exclude_environmental_tax_a) then "--exclude-environmental-taxa" else ""} \
      ~{if defined(fna) then ("--fna " +  '"' + fna + '"') else ""} \
      ~{if (filter_unplaced_sequences) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    folder_files_downloaded: "Folder to which the files are downloaded. Default: '.'"
    db: "Alternative to -o: Download to <directory>/{library,taxonomy}."
    threads: "<# of threads>  Number of processes when downloading (uses xargs). Default: '5'"
    rsync: "Download using rsync."
    overwrite: "Redownload and overwrite files with the same name."
    verbose: "Be verbose."
    dust: "Mask low-complexity regions using dustmasker."
    min_seq_len: "Filter all sequences from the FASTA files that have less than X bp."
    search: "Download all sequences returned from a NCBI nucleotide search.\\nWhen used with viral-neighbors, it subsets the viral genomes by the search.\\nE.g. \\\"txid1570291[Organism]\\\" for Ebola virus sequences (taxonomy ID 1570291)."
    ac: ",AC2          Alternative to --search. Download specified ACs of nucleotide database."
    mapping_file: "Map accessions using the specified mapping file(s) (comma-separated).\\nPossible values: nucl_est, nucl_gb, nucl_gss, nucl_wgs.\\nFor viral-neighbors, the default is nucl_gb. Unset by giving it an empty string.\\nDownloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
    ret_mode: "Specify return mode. Possible options: text (default), asn.1, xml."
    ret_type: "Specify return type for download. Note that no mapping files are generated when\\nrettype is specified. Possible options: fasta (default), gb, gbc, native, acc, seqid, ft,\\ngbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and fasta files are split, while the other formats stay in chunks.\\nThe resulting files will have the rettype as extension."
    tax_a: "Provide list of taxa that are kept in the database. Comma separated, supply either taxIDs or\\none of the following division names: archaea bacteria fungi parasitic_worms protozoa viral\\nDefault: \\\"bacteria,archaea,viral,fungi,protozoa\\\""
    exclude_environmental_tax_a: "Exclude taxa that are named 'environmental samples'."
    fna: "Comma-separated list of sequence types, including genomic, rna, rna_from_genomic, cds_from_genomic. Default: genomic.\\nSee the assembly project FTP site for available sequences"
    filter_unplaced_sequences: "Filter unplaced sequences."
  }
  output {
    File out_stdout = stdout()
  }
}