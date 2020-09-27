class: CommandLineTool
id: singlem_renew.cwl
inputs:
- id: in_input_archive_otu_tables
  doc: "sequence_files) [sequence_file(s) ...]\n[--reverse sequence_file(s) [sequence_file(s\
    \ ...]]\n[--otu_table filename] [--threads num_threads]\n[--assignment_method\
    \ {pplacer,diamond,diamond_example}]\n[--output_extras] [--archive_otu_table filename]\n\
    [--working_directory directory]\n[--working_directory_tmpdir] [--force]\n[--output_jplace\
    \ filename] [--evalue EVALUE]\n[--min_orf_length length] [--restrict_read_length\
    \ length]\n[--filter_minimum_protein length]\n[--filter_minimum_nucleotide length]\
    \ [--include_inserts]\n[--known_otu_tables KNOWN_OTU_TABLES [KNOWN_OTU_TABLES\
    \ ...]]\n[--singlem_packages SINGLEM_PACKAGES [SINGLEM_PACKAGES ...]]\n[--no_assign_taxonomy]\
    \ [--known_sequence_taxonomy FILE]"
  type: string[]
  inputBinding:
    prefix: --input_archive_otu_tables
- id: in_full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- renew
