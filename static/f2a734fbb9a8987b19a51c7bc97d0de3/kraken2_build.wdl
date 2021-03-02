version 1.0

task Kraken2build {
  input {
    Boolean? download_taxonomy
    String? download_library
    String? special
    File? add_to_library
    Boolean? build
    Boolean? clean
    Boolean? standard
    Int? db
    Boolean? threads
    Int? km_er_len
    Int? minimizer_len
    Int? minimizer_spaces
    Boolean? protein
    Boolean? no_masking
    Int? max_db_size
    Boolean? use_ftp
    Float? load_factor
    Boolean? fast_build
    String? var_task
  }
  command <<<
    kraken2_build \
      ~{var_task} \
      ~{if (download_taxonomy) then "--download-taxonomy" else ""} \
      ~{if defined(download_library) then ("--download-library " +  '"' + download_library + '"') else ""} \
      ~{if defined(special) then ("--special " +  '"' + special + '"') else ""} \
      ~{if defined(add_to_library) then ("--add-to-library " +  '"' + add_to_library + '"') else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (standard) then "--standard" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(km_er_len) then ("--kmer-len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer-len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(minimizer_spaces) then ("--minimizer-spaces " +  '"' + minimizer_spaces + '"') else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if (no_masking) then "--no-masking" else ""} \
      ~{if defined(max_db_size) then ("--max-db-size " +  '"' + max_db_size + '"') else ""} \
      ~{if (use_ftp) then "--use-ftp" else ""} \
      ~{if defined(load_factor) then ("--load-factor " +  '"' + load_factor + '"') else ""} \
      ~{if (fast_build) then "--fast-build" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kraken2:2.1.1--pl526hc9558a2_0"
  }
  parameter_meta {
    download_taxonomy: "Avoids downloading accession number to taxid maps,"
    download_library: "Download partial library\\n(TYPE = one of \\\"archaea\\\", \\\"bacteria\\\", \\\"plasmid\\\",\\n\\\"viral\\\", \\\"human\\\", \\\"fungi\\\", \\\"plant\\\", \\\"protozoa\\\",\\n\\\"nr\\\", \\\"nt\\\", \\\"UniVec\\\", \\\"UniVec_Core\\\")"
    special: "Download and build a special database\\n(TYPE = one of \\\"greengenes\\\", \\\"silva\\\", \\\"rdp\\\")"
    add_to_library: "Add FILE to library"
    build: "Create DB from library\\n(requires taxonomy d/l'ed and at least one file\\nin library)"
    clean: "Remove unneeded files from a built database"
    standard: "Download and build default database"
    db: "Kraken 2 DB name (mandatory except for"
    threads: "#                Number of threads (def: 1)"
    km_er_len: "K-mer length in bp/aa (build task only;\\ndef: 35 nt, 15 aa)"
    minimizer_len: "Minimizer length in bp/aa (build task only;\\ndef: 31 nt, 12 aa)"
    minimizer_spaces: "Number of characters in minimizer that are\\nignored in comparisons (build task only;\\ndef: 7 nt, 0 aa)"
    protein: "Build a protein database for translated search"
    no_masking: "Used with --standard/--download-library/"
    max_db_size: "Maximum number of bytes for Kraken 2 hash table;\\nif the estimator determines more would normally be\\nneeded, the reference library will be downsampled\\nto fit. (Used with --build/--standard/--special)"
    use_ftp: "Use FTP for downloading instead of RSYNC; used with"
    load_factor: "Proportion of the hash table to be populated\\n(build task only; def: 0.7, must be\\nbetween 0 and 1)."
    fast_build: "Do not require database to be deterministically\\nbuilt when using multiple threads.  This is faster,\\nbut does introduce variability in minimizer/LCA\\npairs.  Used with --build and --standard options.\\n"
    var_task: ""
  }
  output {
    File out_stdout = stdout()
  }
}