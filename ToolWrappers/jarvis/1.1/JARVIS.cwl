class: CommandLineTool
id: JARVIS.cwl
inputs:
- id: in_force
  doc: force mode. Overwrites old files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: verbose mode (more information).
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_estimation
  doc: creates [sequence].info with complexity profile.
  type: boolean?
  inputBinding:
    prefix: --estimation
- id: in_show_levels
  doc: show pre-computed compression levels (configured).
  type: boolean?
  inputBinding:
    prefix: --show-levels
- id: in_estimate
  doc: "it creates a file with the extension \".iae\" with the\nrespective information\
    \ content. If the file is FASTA or\nFASTQ it will only use the \"ACGT\" (genomic)\
    \ sequence."
  type: boolean?
  inputBinding:
    prefix: --estimate
- id: in_compression_level_integerdefault
  doc: "[NUMBER],  --level [NUMBER]\nCompression level (integer).\nDefault level:\
    \ 1.\nIt defines compressibility in balance with computational\nresources (RAM\
    \ & time). Use -s for levels perception."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_size_context_selection
  doc: "[NUMBER],  --selection [NUMBER]\nSize of the context selection model (integer).\n\
    Default context selection: 12."
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- JARVIS
