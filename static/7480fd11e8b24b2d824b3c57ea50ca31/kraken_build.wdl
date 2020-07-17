version 1.0

task KrakenBuild {
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
    String? km_er_len
    String? minimizer_len
    String? jellyfish_hash_size
    Int? max_db_size
    String? shrink_block_offset
    Boolean? work_on_disk
    String? var_task
    String? option
  }
  command <<<
    kraken-build \
      ~{var_task} \
      ~{option} \
      ~{true="--download-taxonomy" false="" download_taxonomy} \
      ~{if defined(download_library) then ("--download-library " +  '"' + download_library + '"') else ""} \
      ~{if defined(add_to_library) then ("--add-to-library " +  '"' + add_to_library + '"') else ""} \
      ~{true="--build" false="" build} \
      ~{true="--rebuild" false="" rebuild} \
      ~{true="--clean" false="" clean} \
      ~{if defined(shrink) then ("--shrink " +  '"' + shrink + '"') else ""} \
      ~{true="--standard" false="" standard} \
      ~{true="--upgrade" false="" upgrade} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--threads" false="" threads} \
      ~{if defined(new_db) then ("--new-db " +  '"' + new_db + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer-len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer-len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(jellyfish_hash_size) then ("--jellyfish-hash-size " +  '"' + jellyfish_hash_size + '"') else ""} \
      ~{if defined(max_db_size) then ("--max-db-size " +  '"' + max_db_size + '"') else ""} \
      ~{if defined(shrink_block_offset) then ("--shrink-block-offset " +  '"' + shrink_block_offset + '"') else ""} \
      ~{true="--work-on-disk" false="" work_on_disk}
  >>>
  parameter_meta {
    download_taxonomy: "Download NCBI taxonomic information"
    download_library: "Download partial library (TYPE = one of \"bacteria\", \"plasmids\",  \"viruses\", \"human\")"
    add_to_library: "Add FILE to library"
    build: "Create DB from library (requires taxonomy d/l'ed and at least one file in library)"
    rebuild: "Create DB from library like --build, but remove existing non-library/taxonomy files before build"
    clean: "Remove unneeded files from a built database"
    shrink: "Shrink an existing DB to have only NEW_CT k-mers"
    standard: "Download and create default database"
    upgrade: "Upgrade an existing older database to use scrambled minimizer ordering (see README for details)"
    db: "Kraken DB/library name (mandatory except for --help/--version)"
    threads: "#                Number of threads (def: 1)"
    new_db: "New Kraken DB name (shrink task only; mandatory for shrink task)"
    km_er_len: "K-mer length in bp (build/shrink tasks only; def: 31)"
    minimizer_len: "Minimizer length in bp (build/shrink tasks only; def: 15)"
    jellyfish_hash_size: "Pass a specific hash size argument to jellyfish when building database (build task only)"
    max_db_size: "Shrink the DB before full build, making sure database and index together use <= SIZE gigabytes (build task only)"
    shrink_block_offset: "When shrinking, select the k-mer that is NUM positions from the end of a block of k-mers (default: 1)"
    work_on_disk: "Perform most operations on disk rather than in RAM (will slow down build in most cases)"
    var_task: ""
    option: ""
  }
}