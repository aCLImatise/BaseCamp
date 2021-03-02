class: CommandLineTool
id: snpiphy.cwl
inputs:
- id: in_fast_q_dir
  doc: "Path to a directory with your interleaved fastq\nsequencing reads or fasta\
    \ assemblies."
  type: File?
  inputBinding:
    prefix: --fastq-dir
- id: in_output_directory
  doc: "Path to the output directory. A directory will be\ncreated if one does not\
    \ exist."
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_reference
  doc: "Path to the reference sequence. Only fasta format is\naccepted currently."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_cov_cut_off
  doc: "Percent coverage of reference sequence (0-100%) used\nto reject a sample.\
    \ Samples lower than this threshold\nwill be excluded from phylogenetic pipeline\
    \ steps.\nDefaults to 85%."
  type: long?
  inputBinding:
    prefix: --cov-cutoff
- id: in_prefix
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: Number of threads to use for multiprocessing.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_parallel
  doc: "Use GNU parallel to run multiple instances of snippy\n(can speed things up\
    \ if you have multiple cores\navailable)"
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_single_end
  doc: "fastq reads are single end instead of paired-end. Use\nfor ion torrent or\
    \ non-paired end illumina data"
  type: boolean?
  inputBinding:
    prefix: --single_end
- id: in_gamma_model
  doc: "Use GTRGAMMA model instead of GTRCAT during the\ngubbins and RAxML tree building\
    \ steps."
  type: boolean?
  inputBinding:
    prefix: --gamma_model
- id: in_tree_builder
  doc: "Algorithm used for building the phylogenetic tree\n(default: raxml)"
  type: string?
  inputBinding:
    prefix: --tree_builder
- id: in_force
  doc: Overwrite files in the output directories.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: "Increase verbosity on command line output (n.b.\nverbose output is always\
    \ saved to snpiphy.log in the\noutput directory).\n"
  type: Directory?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Path to the output directory. A directory will be\ncreated if one does not\
    \ exist."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_verbose
  doc: "Increase verbosity on command line output (n.b.\nverbose output is always\
    \ saved to snpiphy.log in the\noutput directory).\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- snpiphy
