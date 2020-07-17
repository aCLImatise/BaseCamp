version 1.0

task BactopiaDatasets.py {
  input {
    String? ariba
    String? species
    Boolean? skip_pro_kk_a
    Boolean? include_genus
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
    String output_directory
  }
  command <<<
    bactopia-datasets.py \
      ~{output_directory} \
      ~{if defined(ariba) then ("--ariba " +  '"' + ariba + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--skip_prokka" false="" skip_pro_kk_a} \
      ~{true="--include_genus" false="" include_genus} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{true="--fast_cluster" false="" fast_cluster} \
      ~{true="--skip_minmer" false="" skip_min_mer} \
      ~{true="--skip_plsdb" false="" skip_pls_db} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--clear_cache" false="" clear_cache} \
      ~{true="--force" false="" force} \
      ~{true="--force_ariba" false="" force_ariba} \
      ~{true="--force_mlst" false="" force_mlst} \
      ~{true="--force_prokka" false="" force_pro_kk_a} \
      ~{true="--force_minmer" false="" force_min_mer} \
      ~{true="--force_plsdb" false="" force_pls_db} \
      ~{true="--keep_files" false="" keep_files} \
      ~{true="--list_datasets" false="" list_datasets} \
      ~{true="--depends" false="" depends} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    ariba: "Setup Ariba datasets for a given reference or a list of references in a text file. (Default: card,vfdb_core)"
    species: "Download available MLST schemas and completed genomes for a given species or a list of species in a text file."
    skip_pro_kk_a: "Skip creation of a Prokka formatted fasta for each species"
    include_genus: "Include all genus members in the Prokka proteins FASTA"
    identity: "CD-HIT (-c) sequence identity threshold. (Default: 0.9)"
    overlap: "CD-HIT (-s) length difference cutoff. (Default: 0.8)"
    max_memory: "CD-HIT (-M) memory limit (in MB). (Default: unlimited"
    fast_cluster: "Use CD-HIT's (-g 0) fast clustering algorithm, instead of the accurate but slow algorithm."
    skip_min_mer: "Skip download of pre-computed minmer datasets (mash, sourmash)"
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
    list_datasets: "List Ariba reference datasets and MLST schemas available for setup."
    depends: "Verify dependencies are installed."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    output_directory: "Directory to write output."
  }
}