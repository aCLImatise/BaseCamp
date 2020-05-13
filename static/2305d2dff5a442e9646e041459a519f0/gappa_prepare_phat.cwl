class: CommandLineTool
id: gappa_prepare_phat.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: taxonomy_file
  doc: :FILE REQUIRED File that lists the taxa of the database.
  type: string
  inputBinding:
    prefix: --taxonomy-file
- id: sequence_file
  doc: :FILE REQUIRED Fasta file containing the sequences of the database.
  type: string
  inputBinding:
    prefix: --sequence-file
- id: target_size
  doc: =0 REQUIRED Target size of how many taxa to select for building consensus sequences.
  type: string
  inputBinding:
    prefix: --target-size
- id: sub_taxonomy
  doc: If a taxopath from the taxonomy is provided, only the respective sub-taxonomy
    is used.
  type: string
  inputBinding:
    prefix: --sub-taxonomy
- id: min_sub_clade_size
  doc: =0  Minimal size of sub-clades. Everything below is expanded.
  type: string
  inputBinding:
    prefix: --min-subclade-size
- id: max_sub_clade_size
  doc: =0  Maximal size of a non-expanded sub-clades. Everything bigger is first expanded.
  type: string
  inputBinding:
    prefix: --max-subclade-size
- id: min_tax_level
  doc: =0      Minimal taxonomic level. Taxa below this level are always expanded.
  type: string
  inputBinding:
    prefix: --min-tax-level
- id: allow_approximation
  doc: Allow to expand taxa that help getting closer to the --target-size, even if
    they are not the ones with the highest entropy.
  type: boolean
  inputBinding:
    prefix: --allow-approximation
- id: no_tax_a_selection
  doc: If set, no taxa selection using entropy is performed. Instead, all taxa on
    all levels/ranks are used and consensus sequences for all of them are calculated.
    This is useful for testing and to try out new ideas.
  type: boolean
  inputBinding:
    prefix: --no-taxa-selection
- id: consensus_method
  doc: :{majorities,cavener,threshold}=majorities Consensus method to use for combining
    sequences.
  type: string
  inputBinding:
    prefix: --consensus-method
- id: consensus_threshold
  doc: ':FLOAT in [0 - 1]=0.5 Needs: --consensus-method Threshold value to use with
    --consensus-method threshold. Has to be in [ 0.0, 1.0 ].'
  type: double
  inputBinding:
    prefix: --consensus-threshold
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: write_info_files
  doc: If set, two additional info files are written, containing the new pruned taxonomy,
    as well as the entropy of all clades of the original taxonomy.
  type: boolean
  inputBinding:
    prefix: --write-info-files
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- prepare
- phat
