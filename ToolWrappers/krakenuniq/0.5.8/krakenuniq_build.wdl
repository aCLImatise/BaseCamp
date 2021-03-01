version 1.0

task Krakenuniqbuild {
  input {
    Boolean? download_taxonomy
    String? download_library
    File? add_to_library
    Boolean? build
    Boolean? rebuild
    Boolean? clean
    String? shrink
    Boolean? standard
    Directory? db
    Boolean? threads
    String? new_db
    Int? km_er_len
    Int? minimizer_len
    Int? jellyfish_hash_size
    String? jellyfish_bin
    Int? max_db_size
    Int? shrink_block_offset
    Boolean? work_on_disk
    Boolean? tax_ids_for_genomes
    Boolean? tax_ids_for_sequences
    Int? min_contig_size
    String? library_dir
    String? taxonomy_dir
    Boolean? uid_database
    Boolean? lca_database
    Boolean? no_lca_database
    String? var_task
  }
  command <<<
    krakenuniq_build \
      ~{var_task} \
      ~{if (download_taxonomy) then "--download-taxonomy" else ""} \
      ~{if defined(download_library) then ("--download-library " +  '"' + download_library + '"') else ""} \
      ~{if defined(add_to_library) then ("--add-to-library " +  '"' + add_to_library + '"') else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (rebuild) then "--rebuild" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(shrink) then ("--shrink " +  '"' + shrink + '"') else ""} \
      ~{if (standard) then "--standard" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(new_db) then ("--new-db " +  '"' + new_db + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer-len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(minimizer_len) then ("--minimizer-len " +  '"' + minimizer_len + '"') else ""} \
      ~{if defined(jellyfish_hash_size) then ("--jellyfish-hash-size " +  '"' + jellyfish_hash_size + '"') else ""} \
      ~{if defined(jellyfish_bin) then ("--jellyfish-bin " +  '"' + jellyfish_bin + '"') else ""} \
      ~{if defined(max_db_size) then ("--max-db-size " +  '"' + max_db_size + '"') else ""} \
      ~{if defined(shrink_block_offset) then ("--shrink-block-offset " +  '"' + shrink_block_offset + '"') else ""} \
      ~{if (work_on_disk) then "--work-on-disk" else ""} \
      ~{if (tax_ids_for_genomes) then "--taxids-for-genomes" else ""} \
      ~{if (tax_ids_for_sequences) then "--taxids-for-sequences" else ""} \
      ~{if defined(min_contig_size) then ("--min-contig-size " +  '"' + min_contig_size + '"') else ""} \
      ~{if defined(library_dir) then ("--library-dir " +  '"' + library_dir + '"') else ""} \
      ~{if defined(taxonomy_dir) then ("--taxonomy-dir " +  '"' + taxonomy_dir + '"') else ""} \
      ~{if (uid_database) then "--uid-database" else ""} \
      ~{if (lca_database) then "--lca-database" else ""} \
      ~{if (no_lca_database) then "--no-lca-database" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    download_taxonomy: "Download NCBI taxonomic information"
    download_library: "Download partial library (TYPE = one of \\\"refseq/bacteria\\\", \\\"refseq/archaea\\\", \\\"refseq/viral\\\").\\nUse krakenuniq-download for more options."
    add_to_library: "Add FILE to library"
    build: "Create DB from library (requires taxonomy d/l'ed and at\\nleast one file in library)"
    rebuild: "Create DB from library like --build, but remove\\nexisting non-library/taxonomy files before build"
    clean: "Remove unneeded files from a built database"
    shrink: "Shrink an existing DB to have only NEW_CT k-mers"
    standard: "Download and create default database, which contains complete genomes\\nfor archaea, bacteria and viruses from RefSeq, as well as viral strains\\nfrom NCBI. Specify --taxids-for-genomes and --taxids-for-sequences\\nseparately, if desired."
    db: "Kraken DB directory (mandatory except for --help/--version)"
    threads: "#                Number of threads (def: 1)"
    new_db: "New Kraken DB name (shrink task only; mandatory\\nfor shrink task)"
    km_er_len: "K-mer length in bp (build/shrink tasks only;\\ndef: 31)"
    minimizer_len: "Minimizer length in bp (build/shrink tasks only;\\ndef: 15)"
    jellyfish_hash_size: "Pass a specific hash size argument to jellyfish\\nwhen building database (build task only)"
    jellyfish_bin: "Use STR as Jellyfish 1 binary."
    max_db_size: "Shrink the DB before full build, making sure\\ndatabase and index together use <= SIZE gigabytes\\n(build task only)"
    shrink_block_offset: "When shrinking, select the k-mer that is NUM\\npositions from the end of a block of k-mers\\n(default: 1)"
    work_on_disk: "Perform most operations on disk rather than in\\nRAM (will slow down build in most cases)"
    tax_ids_for_genomes: "Add taxonomy IDs (starting with 1 billion) for genomes.\\nOnly works with 3-column seqid2taxid map with third\\ncolumn being the name"
    tax_ids_for_sequences: "Add taxonomy IDs for sequences, starting with 1 billion.\\nCan be useful to resolve classifications with multiple genomes\\nfor one taxonomy ID."
    min_contig_size: "Minimum contig size for inclusion in database.\\nUse with draft genomes to reduce contamination, e.g. with values between 1000 and 10000."
    library_dir: "Use DIR for reference sequences instead of DBDIR/library."
    taxonomy_dir: "Use DIR for taxonomy instead of DBDIR/taxonomy."
    uid_database: "Build a UID database (default no)"
    lca_database: "Build a LCA database (default yes)"
    no_lca_database: "Do not build a LCA database"
    var_task: ""
  }
  output {
    File out_stdout = stdout()
  }
}