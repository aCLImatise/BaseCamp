class: CommandLineTool
id: snpiphy.cwl
inputs:
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
- id: in_input_dir
  doc: "Path to a directory with your interleaved fastq\nsequencing reads, single-end\
    \ sequencing reads (use\nwith the -s option) or fasta assemblies."
  type: File?
  inputBinding:
    prefix: --input_dir
- id: in_input_list
  doc: "Path to a tab-separated file containing read paths and\npaired status. Best\
    \ used when running a combination of\nsingle-end and paired-end data or if your\
    \ data is\nspread across multiple directories. Run\n'snpiphy_generate_input_list'\
    \ to generate an example\nlist."
  type: File?
  inputBinding:
    prefix: --input_list
- id: in_cov_cut_off
  doc: "Percent coverage of reference sequence (0-100%) used\nto reject a sample.\
    \ Samples lower than this threshold\nwill be excluded from phylogenetic pipeline\
    \ steps.\nDefaults to 85%."
  type: long?
  inputBinding:
    prefix: --cov_cutoff
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
- id: in_no_recombination_filter
  doc: "Don't filter potential recombination events. Use for\norganisms that are known\
    \ undergo low amounts of\nrecombination."
  type: boolean?
  inputBinding:
    prefix: --no_recombination_filter
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snpiphy:0.5--py_0
cwlVersion: v1.1
baseCommand:
- snpiphy
