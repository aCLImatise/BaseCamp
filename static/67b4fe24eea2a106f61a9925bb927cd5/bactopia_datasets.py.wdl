version 1.0

task Bactopiadatasetspy {
  input {
    Directory? outdir
    Boolean? skip_ariba
    Int? ariba
    File? download_available_schemas
    Boolean? skip_mlst
    Boolean? skip_pro_kk_a
    String? assembly_level
    Int? limit
    String? accessions
    Float? identity
    Float? overlap
    Int? max_memory
    Boolean? fast_cluster
    Boolean? skip_min_mer
    Boolean? skip_pls_db
    Boolean? skip_amr
    File? prodigal_tf
    File? reference
    File? mapping
    File? genes
    File? proteins
    File? primers
    Boolean? force_optional
    Int? cpus
    Boolean? clear_cache
    Boolean? force
    Boolean? force_ariba
    Boolean? force_mlst
    Boolean? force_pro_kk_a
    Boolean? force_min_mer
    Boolean? force_pls_db
    Boolean? force_amr
    Boolean? available_datasets
    Boolean? depends
    Boolean? verbose
    Boolean? silent
    String ariba_dot
    String _includegenus_fasta
    String datasets_dot
  }
  command <<<
    bactopia_datasets_py \
      ~{ariba_dot} \
      ~{_includegenus_fasta} \
      ~{datasets_dot} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (skip_ariba) then "--skip_ariba" else ""} \
      ~{if defined(ariba) then ("--ariba " +  '"' + ariba + '"') else ""} \
      ~{if defined(download_available_schemas) then ("--species " +  '"' + download_available_schemas + '"') else ""} \
      ~{if (skip_mlst) then "--skip_mlst" else ""} \
      ~{if (skip_pro_kk_a) then "--skip_prokka" else ""} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(accessions) then ("--accessions " +  '"' + accessions + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if (fast_cluster) then "--fast_cluster" else ""} \
      ~{if (skip_min_mer) then "--skip_minmer" else ""} \
      ~{if (skip_pls_db) then "--skip_plsdb" else ""} \
      ~{if (skip_amr) then "--skip_amr" else ""} \
      ~{if defined(prodigal_tf) then ("--prodigal_tf " +  '"' + prodigal_tf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if defined(primers) then ("--primers " +  '"' + primers + '"') else ""} \
      ~{if (force_optional) then "--force_optional" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (clear_cache) then "--clear_cache" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_ariba) then "--force_ariba" else ""} \
      ~{if (force_mlst) then "--force_mlst" else ""} \
      ~{if (force_pro_kk_a) then "--force_prokka" else ""} \
      ~{if (force_min_mer) then "--force_minmer" else ""} \
      ~{if (force_pls_db) then "--force_plsdb" else ""} \
      ~{if (force_amr) then "--force_amr" else ""} \
      ~{if (available_datasets) then "--available_datasets" else ""} \
      ~{if (depends) then "--depends" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.2--0"
  }
  parameter_meta {
    outdir: "Directory to write output. (Default ./datasets)"
    skip_ariba: "Skip setup of Ariba datasets"
    ariba: "Comma separated list of Ariba datasets to download and\\nsetup. Available datasets include: argannot, card,\\nncbi, megares, plasmidfinder, resfinder,\\nsrst2_argannot, vfdb_core, vfdb_full, virulencefinder\\n(Default: \\\"vfdb_core,card\\\") Use --available_datasets\\nto see the full list."
    download_available_schemas: "Download available MLST schemas and completed genomes\\nfor a given species or a list of species in a text\\nfile."
    skip_mlst: "Skip setup of MLST schemas for each species"
    skip_pro_kk_a: "Skip creation of a Prokka formatted fasta for each"
    assembly_level: "Assembly levels of genomes to download (Default:\\ncomplete)."
    limit: "If available completed genomes exceeds a given limit,\\na random subsample will be taken. (Default 1000)"
    accessions: "A list of RefSeq accessions to download."
    identity: "CD-HIT (-c) sequence identity threshold. (Default:\\n0.9)"
    overlap: "CD-HIT (-s) length difference cutoff. (Default: 0.8)"
    max_memory: "CD-HIT (-M) memory limit (in MB). (Default: unlimited"
    fast_cluster: "Use CD-HIT's (-g 0) fast clustering algorithm, instead\\nof the accurate but slow algorithm."
    skip_min_mer: "Skip download of pre-computed minmer datasets (mash,\\nsourmash)"
    skip_pls_db: "Skip download of pre-computed PLSDB datbases (blast,\\nmash)"
    skip_amr: "Skip download of antimicrobial resistance databases\\n(e.g. AMRFinder+)"
    prodigal_tf: "A pre-built Prodigal training file to add to the\\nspecies annotation folder. Requires a single species\\n(--species) and will replace existing training files."
    reference: "A reference genome (FASTA/GenBank (preferred)) file or\\ndirectory to be added to the optional folder for\\nvariant calling. Requires a single species\\n(--species)."
    mapping: "A reference sequence (FASTA) file or directory to be\\nadded to the optional folder for mapping. Requires a\\nsingle species (--species)."
    genes: "A gene sequence (FASTA) file or directory to be added\\nto the optional folder for BLAST. Requires a single\\nspecies (--species)."
    proteins: "A protein sequence (FASTA) file or directory to be\\nadded to the optional folder for BLAST. Requires a\\nsingle species (--species)."
    primers: "A primer sequence (FASTA) file or directory to be\\nadded to the optional folder for BLAST. Requires a\\nsingle species (--species)."
    force_optional: "Overwrite any existing files in the optional folders"
    cpus: "Number of cpus to use. (Default: 1)"
    clear_cache: "Remove any existing cache."
    force: "Forcibly overwrite existing datasets."
    force_ariba: "Forcibly overwrite existing Ariba datasets."
    force_mlst: "Forcibly overwrite existing MLST datasets."
    force_pro_kk_a: "Forcibly overwrite existing Prokka datasets."
    force_min_mer: "Forcibly overwrite existing minmer datasets."
    force_pls_db: "Forcibly overwrite existing PLSDB datasets."
    force_amr: "Forcibly overwrite existing antimicrobial resistance"
    available_datasets: "List Ariba reference datasets and MLST schemas\\navailable for setup."
    depends: "Verify dependencies are installed."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    ariba_dot: "optional arguments:"
    _includegenus_fasta: "--include_genus       Include all genus members in the Prokka proteins FASTA"
    datasets_dot: "--keep_files          Keep all downloaded and intermediate files."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}