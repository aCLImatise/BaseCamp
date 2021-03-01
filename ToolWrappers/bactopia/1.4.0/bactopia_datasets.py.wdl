version 1.0

task Bactopiadatasetspy {
  input {
    File? ariba
    File? species
    Boolean? skip_pro_kk_a
    Boolean? include_genus
    Int? limit
    String? accessions
    Float? identity
    Float? overlap
    Int? max_memory
    Boolean? fast_cluster
    Boolean? skip_min_mer
    Boolean? skip_pls_db
    Int? cpus
    Boolean? clear_cache
    Boolean? force
    Boolean? force_ariba
    Boolean? force_mlst
    Boolean? force_pro_kk_a
    Boolean? force_min_mer
    Boolean? force_pls_db
    Boolean? keep_files
    Boolean? list_datasets
    Boolean? depends
    Boolean? verbose
    Boolean? silent
    String pub_mlst
    String ariba_dot
  }
  command <<<
    bactopia_datasets_py \
      ~{pub_mlst} \
      ~{ariba_dot} \
      ~{if defined(ariba) then ("--ariba " +  '"' + ariba + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (skip_pro_kk_a) then "--skip_prokka" else ""} \
      ~{if (include_genus) then "--include_genus" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(accessions) then ("--accessions " +  '"' + accessions + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if (fast_cluster) then "--fast_cluster" else ""} \
      ~{if (skip_min_mer) then "--skip_minmer" else ""} \
      ~{if (skip_pls_db) then "--skip_plsdb" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (clear_cache) then "--clear_cache" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_ariba) then "--force_ariba" else ""} \
      ~{if (force_mlst) then "--force_mlst" else ""} \
      ~{if (force_pro_kk_a) then "--force_prokka" else ""} \
      ~{if (force_min_mer) then "--force_minmer" else ""} \
      ~{if (force_pls_db) then "--force_plsdb" else ""} \
      ~{if (keep_files) then "--keep_files" else ""} \
      ~{if (list_datasets) then "--list_datasets" else ""} \
      ~{if (depends) then "--depends" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ariba: "Setup Ariba datasets for a given reference or a list of\\nreferences in a text file. (Default: card,vfdb_core)"
    species: "Download available MLST schemas and completed genomes for\\na given species or a list of species in a text file."
    skip_pro_kk_a: "Skip creation of a Prokka formatted fasta for each species"
    include_genus: "Include all genus members in the Prokka proteins FASTA"
    limit: "If available completed genomes exceeds a given limit, a\\nrandom subsample will be taken."
    accessions: "A list of RefSeq accessions to download."
    identity: "CD-HIT (-c) sequence identity threshold. (Default: 0.9)"
    overlap: "CD-HIT (-s) length difference cutoff. (Default: 0.8)"
    max_memory: "CD-HIT (-M) memory limit (in MB). (Default: unlimited"
    fast_cluster: "Use CD-HIT's (-g 0) fast clustering algorithm, instead of\\nthe accurate but slow algorithm."
    skip_min_mer: "Skip download of pre-computed minmer datasets (mash,\\nsourmash)"
    skip_pls_db: "Skip download of pre-computed PLSDB datbases (blast, mash)"
    cpus: "Number of cpus to use. (Default: 1)"
    clear_cache: "Remove any existing cache."
    force: "Forcibly overwrite existing datasets."
    force_ariba: "Forcibly overwrite existing Ariba datasets."
    force_mlst: "Forcibly overwrite existing MLST datasets."
    force_pro_kk_a: "Forcibly overwrite existing Prokka datasets."
    force_min_mer: "Forcibly overwrite existing minmer datasets."
    force_pls_db: "Forcibly overwrite existing PLSDB datasets."
    keep_files: "Keep all downloaded and intermediate files."
    list_datasets: "List Ariba reference datasets and MLST schemas available\\nfor setup."
    depends: "Verify dependencies are installed."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    pub_mlst: "Bactopia config file with PubMLST schema mappings for"
    ariba_dot: "OUTPUT_DIRECTORY  Directory to write output."
  }
  output {
    File out_stdout = stdout()
  }
}