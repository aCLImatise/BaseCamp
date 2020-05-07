class: CommandLineTool
id: snpiphy.cwl
inputs:
- id: fast_q_dir
  doc: Path to a directory with your interleaved fastq sequencing reads or fasta assemblies.
  type: string
  inputBinding:
    prefix: --fastq-dir
- id: output_directory
  doc: Path to the output directory. A directory will be created if one does not exist.
  type: string
  inputBinding:
    prefix: --output-directory
- id: reference
  doc: Path to the reference sequence. Only fasta format is accepted currently.
  type: string
  inputBinding:
    prefix: --reference
- id: cov_cut_off
  doc: Percent coverage of reference sequence (0-100%) used to reject a sample. Samples
    lower than this threshold will be excluded from phylogenetic pipeline steps. Defaults
    to 85%.
  type: string
  inputBinding:
    prefix: --cov-cutoff
- id: prefix
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: Number of threads to use for multiprocessing.
  type: string
  inputBinding:
    prefix: --threads
- id: parallel
  doc: Use GNU parallel to run multiple instances of snippy (can speed things up if
    you have multiple cores available)
  type: boolean
  inputBinding:
    prefix: --parallel
- id: single_end
  doc: fastq reads are single end instead of paired-end. Use for ion torrent or non-paired
    end illumina data
  type: boolean
  inputBinding:
    prefix: --single_end
- id: gamma_model
  doc: Use GTRGAMMA model instead of GTRCAT during the gubbins and RAxML tree building
    steps.
  type: boolean
  inputBinding:
    prefix: --gamma_model
- id: tree_builder
  doc: 'Algorithm used for building the phylogenetic tree (default: raxml)'
  type: string
  inputBinding:
    prefix: --tree_builder
- id: force
  doc: Overwrite files in the output directories.
  type: boolean
  inputBinding:
    prefix: --force
- id: verbose
  doc: Increase verbosity on command line output (n.b. verbose output is always saved
    to snpiphy.log in the output directory).
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- snpiphy
