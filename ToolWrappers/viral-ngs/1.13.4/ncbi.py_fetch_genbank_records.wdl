version 1.0

task NcbipyFetchGenbankRecords {
  input {
    Boolean? force_overwrite
    File? combined_file_prefix
    File? file_ext
    Boolean? remove_separate_files
    File? chunksize
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String? loglevel
    String var_8
    String email_address
    String destination_dir
    String list_accession_ids
  }
  command <<<
    ncbi_py fetch_genbank_records \
      ~{var_8} \
      ~{email_address} \
      ~{destination_dir} \
      ~{list_accession_ids} \
      ~{if (force_overwrite) then "--forceOverwrite" else ""} \
      ~{if defined(combined_file_prefix) then ("--combinedFilePrefix " +  '"' + combined_file_prefix + '"') else ""} \
      ~{if defined(file_ext) then ("--fileExt " +  '"' + file_ext + '"') else ""} \
      ~{if (remove_separate_files) then "--removeSeparateFiles" else ""} \
      ~{if defined(chunksize) then ("--chunkSize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_overwrite: "Overwrite existing files, if present."
    combined_file_prefix: "The prefix of the file containing the combined\\nconcatenated results returned by the list of accession\\nIDs, in the order provided."
    file_ext: "The extension to use for the downloaded files"
    remove_separate_files: "If specified, remove the individual files and leave\\nonly the combined file."
    chunksize: "Causes files to be downloaded from GenBank in chunks\\nof N accessions. Each chunk will be its own combined\\nfile, separate from any combined file created via\\n--combinedFilePrefix (default: 1). If chunkSize is\\nunspecified and >500 accessions are provided,\\nchunkSize will be set to 500 to adhere to the NCBI\\nguidelines on information retreival."
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure."
    loglevel: "Verboseness of output. [default: DEBUG]"
    var_8: "[accession_IDs ...]"
    email_address: "Your email address. To access the Genbank\\nCoreNucleotide database, NCBI requires you to specify\\nyour email address with each request. In case of\\nexcessive usage of the E-utilities, NCBI will attempt\\nto contact a user at the email address provided before\\nblocking access. This email address should be\\nregistered with NCBI. To register an email address,\\nsimply send an email to eutilities@ncbi.nlm.nih.gov\\nincluding your email address and the tool name\\n(tool='https://github.com/broadinstitute/viral-ngs')."
    destination_dir: "Output directory with where .fasta and .tbl files will\\nbe saved"
    list_accession_ids: "List of Genbank nuccore accession IDs"
  }
  output {
    File out_stdout = stdout()
  }
}