class: CommandLineTool
id: bactopia_datasets.py.cwl
inputs:
- id: in_outdir
  doc: Directory to write output. (Default ./datasets)
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_skip_ariba
  doc: Skip setup of Ariba datasets
  type: boolean?
  inputBinding:
    prefix: --skip_ariba
- id: in_ariba
  doc: "Comma separated list of Ariba datasets to download and\nsetup. Available datasets\
    \ include: argannot, card,\nncbi, megares, plasmidfinder, resfinder,\nsrst2_argannot,\
    \ vfdb_core, vfdb_full, virulencefinder\n(Default: \"vfdb_core,card\") Use --available_datasets\n\
    to see the full list."
  type: long?
  inputBinding:
    prefix: --ariba
- id: in_download_available_schemas
  doc: "Download available MLST schemas and completed genomes\nfor a given species\
    \ or a list of species in a text\nfile."
  type: File?
  inputBinding:
    prefix: --species
- id: in_skip_mlst
  doc: Skip setup of MLST schemas for each species
  type: boolean?
  inputBinding:
    prefix: --skip_mlst
- id: in_skip_pro_kk_a
  doc: Skip creation of a Prokka formatted fasta for each
  type: boolean?
  inputBinding:
    prefix: --skip_prokka
- id: in_assembly_level
  doc: "Assembly levels of genomes to download (Default:\ncomplete)."
  type: string?
  inputBinding:
    prefix: --assembly_level
- id: in_limit
  doc: "If available completed genomes exceeds a given limit,\na random subsample\
    \ will be taken. (Default 1000)"
  type: long?
  inputBinding:
    prefix: --limit
- id: in_accessions
  doc: A list of RefSeq accessions to download.
  type: string?
  inputBinding:
    prefix: --accessions
- id: in_identity
  doc: "CD-HIT (-c) sequence identity threshold. (Default:\n0.9)"
  type: double?
  inputBinding:
    prefix: --identity
- id: in_overlap
  doc: 'CD-HIT (-s) length difference cutoff. (Default: 0.8)'
  type: double?
  inputBinding:
    prefix: --overlap
- id: in_max_memory
  doc: 'CD-HIT (-M) memory limit (in MB). (Default: unlimited'
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_fast_cluster
  doc: "Use CD-HIT's (-g 0) fast clustering algorithm, instead\nof the accurate but\
    \ slow algorithm."
  type: boolean?
  inputBinding:
    prefix: --fast_cluster
- id: in_skip_min_mer
  doc: "Skip download of pre-computed minmer datasets (mash,\nsourmash)"
  type: boolean?
  inputBinding:
    prefix: --skip_minmer
- id: in_skip_pls_db
  doc: "Skip download of pre-computed PLSDB datbases (blast,\nmash)"
  type: boolean?
  inputBinding:
    prefix: --skip_plsdb
- id: in_skip_amr
  doc: "Skip download of antimicrobial resistance databases\n(e.g. AMRFinder+)"
  type: boolean?
  inputBinding:
    prefix: --skip_amr
- id: in_prodigal_tf
  doc: "A pre-built Prodigal training file to add to the\nspecies annotation folder.\
    \ Requires a single species\n(--species) and will replace existing training files."
  type: File?
  inputBinding:
    prefix: --prodigal_tf
- id: in_reference
  doc: "A reference genome (FASTA/GenBank (preferred)) file or\ndirectory to be added\
    \ to the optional folder for\nvariant calling. Requires a single species\n(--species)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_mapping
  doc: "A reference sequence (FASTA) file or directory to be\nadded to the optional\
    \ folder for mapping. Requires a\nsingle species (--species)."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_genes
  doc: "A gene sequence (FASTA) file or directory to be added\nto the optional folder\
    \ for BLAST. Requires a single\nspecies (--species)."
  type: File?
  inputBinding:
    prefix: --genes
- id: in_proteins
  doc: "A protein sequence (FASTA) file or directory to be\nadded to the optional\
    \ folder for BLAST. Requires a\nsingle species (--species)."
  type: File?
  inputBinding:
    prefix: --proteins
- id: in_primers
  doc: "A primer sequence (FASTA) file or directory to be\nadded to the optional folder\
    \ for BLAST. Requires a\nsingle species (--species)."
  type: File?
  inputBinding:
    prefix: --primers
- id: in_force_optional
  doc: Overwrite any existing files in the optional folders
  type: boolean?
  inputBinding:
    prefix: --force_optional
- id: in_cpus
  doc: 'Number of cpus to use. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_clear_cache
  doc: Remove any existing cache.
  type: boolean?
  inputBinding:
    prefix: --clear_cache
- id: in_force
  doc: Forcibly overwrite existing datasets.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_force_ariba
  doc: Forcibly overwrite existing Ariba datasets.
  type: boolean?
  inputBinding:
    prefix: --force_ariba
- id: in_force_mlst
  doc: Forcibly overwrite existing MLST datasets.
  type: boolean?
  inputBinding:
    prefix: --force_mlst
- id: in_force_pro_kk_a
  doc: Forcibly overwrite existing Prokka datasets.
  type: boolean?
  inputBinding:
    prefix: --force_prokka
- id: in_force_min_mer
  doc: Forcibly overwrite existing minmer datasets.
  type: boolean?
  inputBinding:
    prefix: --force_minmer
- id: in_force_pls_db
  doc: Forcibly overwrite existing PLSDB datasets.
  type: boolean?
  inputBinding:
    prefix: --force_plsdb
- id: in_force_amr
  doc: Forcibly overwrite existing antimicrobial resistance
  type: boolean?
  inputBinding:
    prefix: --force_amr
- id: in_available_datasets
  doc: "List Ariba reference datasets and MLST schemas\navailable for setup."
  type: boolean?
  inputBinding:
    prefix: --available_datasets
- id: in_depends
  doc: Verify dependencies are installed.
  type: boolean?
  inputBinding:
    prefix: --depends
- id: in_verbose
  doc: Print debug related text.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_ariba_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in__includegenus_fasta
  doc: --include_genus       Include all genus members in the Prokka proteins FASTA
  type: string
  inputBinding:
    position: 0
- id: in_datasets_dot
  doc: --keep_files          Keep all downloaded and intermediate files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output. (Default ./datasets)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.1--0
cwlVersion: v1.1
baseCommand:
- bactopia-datasets.py
