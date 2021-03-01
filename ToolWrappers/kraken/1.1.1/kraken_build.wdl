version 1.0

task Krakenbuild {
  input {
    Boolean? download_taxonomy
    String? download_library
    File? add_to_library
    Boolean? build
    Boolean? rebuild
    Boolean? clean
    String? shrink
    Boolean? standard
    Boolean? upgrade
    String? db
    Boolean? threads
    String? new_db
    Int? km_er_len
    Int? minimizer_len
    Int? jellyfish_hash_size
    Int? max_db_size
    Boolean? use_wget
    Int? shrink_block_offset
    Boolean? work_on_disk
    String? var_task
  }
  command <<<
    kraken_build \
      ~{var_task} \
      ~{if (download_taxonomy) then "--download-taxonomy" else ""} \
      ~{if defined(download_library) then ("--download-library " +  '"' + download_library + '"') else ""} \
      ~{if defined(add_to_library) then ("--add-to-library " +  '"' + add_to_library + '"') else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (rebuild) then "--rebuild" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(shrink) then ("--shrink " +  '"' + shrink + '"') else ""} \
      ~{if (standard) then "--standard" else ""} \
      ~{if (upgrade) then "--upgrade" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(new_db) then ("--new-db " +  '"' + new_db + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer-len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer-len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(jellyfish_hash_size) then ("--jellyfish-hash-size " +  '"' + jellyfish_hash_size + '"') else ""} \
      ~{if defined(max_db_size) then ("--max-db-size " +  '"' + max_db_size + '"') else ""} \
      ~{if (use_wget) then "--use-wget" else ""} \
      ~{if defined(shrink_block_offset) then ("--shrink-block-offset " +  '"' + shrink_block_offset + '"') else ""} \
      ~{if (work_on_disk) then "--work-on-disk" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    download_taxonomy: "Download NCBI taxonomic information"
    download_library: "Download partial library\\n(TYPE = one of \\\"archaea\\\", \\\"bacteria\\\", \\\"plasmid\\\",\\n\\\"viral\\\", \\\"human\\\")"
    add_to_library: "Add FILE to library"
    build: "Create DB from library\\n(requires taxonomy d/l'ed and at least one file\\nin library)"
    rebuild: "Create DB from library like --build, but remove\\nexisting non-library/taxonomy files before build"
    clean: "Remove unneeded files from a built database"
    shrink: "Shrink an existing DB to have only NEW_CT k-mers"
    standard: "Download and create default database"
    upgrade: "Upgrade an existing older database to use scrambled\\nminimizer ordering (see README for details)"
    db: "Kraken DB/library name (mandatory except for"
    threads: "#                Number of threads (def: 1)"
    new_db: "New Kraken DB name (shrink task only; mandatory\\nfor shrink task)"
    km_er_len: "K-mer length in bp (build/shrink tasks only;\\ndef: 31)"
    minimizer_len: "Minimizer length in bp (build/shrink tasks only;\\ndef: 15)"
    jellyfish_hash_size: "Pass a specific hash size argument to jellyfish\\nwhen building database (build task only)"
    max_db_size: "Shrink the DB before full build, making sure\\ndatabase and index together use <= SIZE gigabytes\\n(build task only)"
    use_wget: "Use wget for downloading instead of RSYNC; used with"
    shrink_block_offset: "When shrinking, select the k-mer that is NUM"
    work_on_disk: "Perform most operations on disk rather than in\\nRAM (will slow down build in most cases)\\n"
    var_task: ""
  }
  output {
    File out_stdout = stdout()
  }
}