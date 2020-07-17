version 1.0

task Kraken2Build {
  input {
    Boolean? download_taxonomy
    String? download_library
    String? special
    File? add_to_library
    Boolean? build
    Boolean? clean
    Boolean? standard
    String? db
    Boolean? threads
    String? km_er_len
    String? minimizer_len
    String? minimizer_spaces
    Boolean? protein
    Boolean? no_masking
    String? max_db_size
    Boolean? use_ftp
    Boolean? skip_maps
    String? load_factor
    String? var_task
    String? option
  }
  command <<<
    kraken2-build \
      ~{var_task} \
      ~{option} \
      ~{true="--download-taxonomy" false="" download_taxonomy} \
      ~{if defined(download_library) then ("--download-library " +  '"' + download_library + '"') else ""} \
      ~{if defined(special) then ("--special " +  '"' + special + '"') else ""} \
      ~{if defined(add_to_library) then ("--add-to-library " +  '"' + add_to_library + '"') else ""} \
      ~{true="--build" false="" build} \
      ~{true="--clean" false="" clean} \
      ~{true="--standard" false="" standard} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--threads" false="" threads} \
      ~{if defined(km_er_len) then ("--kmer-len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer-len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(minimizer_spaces) then ("--minimizer-spaces " +  '"' + minimizer_spaces + '"') else ""} \
      ~{true="--protein" false="" protein} \
      ~{true="--no-masking" false="" no_masking} \
      ~{if defined(max_db_size) then ("--max-db-size " +  '"' + max_db_size + '"') else ""} \
      ~{true="--use-ftp" false="" use_ftp} \
      ~{true="--skip-maps" false="" skip_maps} \
      ~{if defined(load_factor) then ("--load-factor " +  '"' + load_factor + '"') else ""}
  >>>
  parameter_meta {
    download_taxonomy: "Download NCBI taxonomic information"
    download_library: "Download partial library (TYPE = one of \"archaea\", \"bacteria\", \"plasmid\", \"viral\", \"human\", \"fungi\", \"plant\", \"protozoa\", \"nr\", \"nt\", \"UniVec\", \"UniVec_Core\")"
    special: "Download and build a special database (TYPE = one of \"greengenes\", \"silva\", \"rdp\")"
    add_to_library: "Add FILE to library"
    build: "Create DB from library (requires taxonomy d/l'ed and at least one file in library)"
    clean: "Remove unneeded files from a built database"
    standard: "Download and build default database"
    db: "Kraken 2 DB name (mandatory except for --help/--version)"
    threads: "#                Number of threads (def: 1)"
    km_er_len: "K-mer length in bp/aa (build task only; def: 35 nt, 15 aa)"
    minimizer_len: "Minimizer length in bp/aa (build task only; def: 31 nt, 12 aa)"
    minimizer_spaces: "Number of characters in minimizer that are ignored in comparisons (build task only; def: 7 nt, 0 aa)"
    protein: "Build a protein database for translated search"
    no_masking: "Used with --standard/--download-library/ --add-to-library to avoid masking low-complexity sequences prior to building; masking requires dustmasker or segmasker to be installed in PATH, which some users might not have."
    max_db_size: "Maximum number of bytes for Kraken 2 hash table; if the estimator determines more would normally be needed, the reference library will be downsampled to fit. (Used with --build/--standard/--special)"
    use_ftp: "Use FTP for downloading instead of RSYNC; used with --download-library/--download-taxonomy/--standard."
    skip_maps: "Avoids downloading accession number to taxid maps, used with --download-taxonomy."
    load_factor: "Proportion of the hash table to be populated (build task only; def: 0.7, must be between 0 and 1)."
    var_task: ""
    option: ""
  }
}