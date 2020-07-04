version 1.0

task KrakenuniqDownload {
  input {
    Directory? folder_files_downloaded
    Directory? db
    Boolean? threads
    Boolean? rsync
    Boolean? overwrite
    Boolean? verbose
    Boolean? dust
    String? min_seq_len
    String? search
    String? ac
    String? mapping_file
    String? ret_mode
    String? ret_type
    String? tax_a
    Boolean? exclude_environmental_tax_a
    String? fna
    Boolean? filter_unplaced_sequences
  }
  command <<<
    krakenuniq-download \
      ~{if defined(folder_files_downloaded) then ("-o " +  '"' + folder_files_downloaded + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--threads" false="" threads} \
      ~{true="--rsync" false="" rsync} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--dust" false="" dust} \
      ~{if defined(min_seq_len) then ("--min-seq-len " +  '"' + min_seq_len + '"') else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""} \
      ~{if defined(ac) then ("--ac " +  '"' + ac + '"') else ""} \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(ret_mode) then ("--retmode " +  '"' + ret_mode + '"') else ""} \
      ~{if defined(ret_type) then ("--rettype " +  '"' + ret_type + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{true="--exclude-environmental-taxa" false="" exclude_environmental_tax_a} \
      ~{if defined(fna) then ("--fna " +  '"' + fna + '"') else ""} \
      ~{true="-u" false="" filter_unplaced_sequences}
  >>>
  parameter_meta {
    folder_files_downloaded: "Folder to which the files are downloaded. Default: '.'"
    db: "Alternative to -o: Download to <directory>/{library,taxonomy}."
    threads: "<# of threads>  Number of processes when downloading (uses xargs). Default: '5'"
    rsync: "Download using rsync."
    overwrite: "Redownload and overwrite files with the same name."
    verbose: "Be verbose."
    dust: "Mask low-complexity regions using dustmasker."
    min_seq_len: "Filter all sequences from the FASTA files that have less than X bp."
    search: "Download all sequences returned from a NCBI nucleotide search. When used with viral-neighbors, it subsets the viral genomes by the search. E.g. \"txid1570291[Organism]\" for Ebola virus sequences (taxonomy ID 1570291)."
    ac: ",AC2          Alternative to --search. Download specified ACs of nucleotide database."
    mapping_file: "Map accessions using the specified mapping file(s) (comma-separated). Possible values: nucl_est, nucl_gb, nucl_gss, nucl_wgs. For viral-neighbors, the default is nucl_gb. Unset by giving it an empty string. Downloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/."
    ret_mode: "Specify return mode. Possible options: text (default), asn.1, xml."
    ret_type: "Specify return type for download. Note that no mapping files are generated when rettype is specified. Possible options: fasta (default), gb, gbc, native, acc, seqid, ft,  gbwithparts, fasta_cds_na, fasta_cds_aa. Note that only gb and fasta files are split, while the other formats stay in chunks. The resulting files will have the rettype as extension."
    tax_a: "Provide list of taxa that are kept in the database. Comma separated, supply either taxIDs or one of the following division names: archaea bacteria fungi parasitic_worms protozoa viral Default: \"bacteria,archaea,viral,fungi,protozoa\""
    exclude_environmental_tax_a: "Exclude taxa that are named 'environmental samples'."
    fna: "Comma-separated list of sequence types, including genomic, rna, rna_from_genomic, cds_from_genomic. Default: genomic. See the assembly project FTP site for available sequences"
    filter_unplaced_sequences: "Filter unplaced sequences."
  }
}