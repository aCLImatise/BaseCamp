class: CommandLineTool
id: gappa_prepare_phat.cwl
inputs:
- id: in_taxonomy_file
  doc: ":FILE REQUIRED\nFile that lists the taxa of the database."
  type: File?
  inputBinding:
    prefix: --taxonomy-file
- id: in_sequence_file
  doc: ":FILE REQUIRED\nFasta file containing the sequences of the database."
  type: File?
  inputBinding:
    prefix: --sequence-file
- id: in_target_size
  doc: "=0 REQUIRED\nTarget size of how many taxa to select for building consensus\
    \ sequences."
  type: long?
  inputBinding:
    prefix: --target-size
- id: in_sub_taxonomy
  doc: If a taxopath from the taxonomy is provided, only the respective sub-taxonomy
    is used.
  type: string?
  inputBinding:
    prefix: --sub-taxonomy
- id: in_min_sub_clade_size
  doc: =0  Minimal size of sub-clades. Everything below is expanded.
  type: long?
  inputBinding:
    prefix: --min-subclade-size
- id: in_max_sub_clade_size
  doc: =0  Maximal size of a non-expanded sub-clades. Everything bigger is first expanded.
  type: long?
  inputBinding:
    prefix: --max-subclade-size
- id: in_min_tax_level
  doc: =0      Minimal taxonomic level. Taxa below this level are always expanded.
  type: long?
  inputBinding:
    prefix: --min-tax-level
- id: in_allow_approximation
  doc: Allow to expand taxa that help getting closer to the --target-size, even if
    they are not the ones with the highest entropy.
  type: boolean?
  inputBinding:
    prefix: --allow-approximation
- id: in_no_tax_a_selection
  doc: If set, no taxa selection using entropy is performed. Instead, all taxa on
    all levels/ranks are used and consensus sequences for all of them are calculated.
    This is useful for testing and to try out new ideas.
  type: boolean?
  inputBinding:
    prefix: --no-taxa-selection
- id: in_consensus_method
  doc: ":{majorities,cavener,threshold}=majorities\nConsensus method to use for combining\
    \ sequences."
  type: string?
  inputBinding:
    prefix: --consensus-method
- id: in_consensus_threshold
  doc: ":FLOAT in [0 - 1]=0.5 Needs: --consensus-method\nThreshold value to use with\
    \ --consensus-method threshold. Has to be in [ 0.0, 1.0 ]."
  type: double?
  inputBinding:
    prefix: --consensus-threshold
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_write_info_files
  doc: If set, two additional info files are written, containing the new pruned taxonomy,
    as well as the entropy of all clades of the original taxonomy.
  type: boolean?
  inputBinding:
    prefix: --write-info-files
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =8            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- prepare
- phat
