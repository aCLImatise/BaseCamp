class: CommandLineTool
id: JARVIS.cwl
inputs:
- id: in__versiondisplay_program
  doc: ",  --version\nDisplay program and version information."
  type: boolean
  inputBinding:
    prefix: -V
- id: in__forceforce_mode
  doc: ",  --force\nforce mode. Overwrites old files."
  type: boolean
  inputBinding:
    prefix: -F
- id: in__verboseverbose_mode
  doc: ",  --verbose\nverbose mode (more information)."
  type: boolean
  inputBinding:
    prefix: -v
- id: in__estimationcreates_complexity
  doc: ",  --estimation\ncreates [sequence].info with complexity profile."
  type: boolean
  inputBinding:
    prefix: -e
- id: in__showlevelsshow_precomputed
  doc: ",  --show-levels\nshow pre-computed compression levels (configured)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_compression_level_integerdefault
  doc: "[NUMBER],  --level [NUMBER]\nCompression level (integer).\nDefault level:\
    \ 1.\nIt defines compressibility in balance with computational\nresources (RAM\
    \ & time). Use -s for levels perception."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_cm
  doc: '[NB_C]:[NB_D]:[NB_I]:[NB_G]/[NB_S]:[NB_E]:[NB_I]:[NB_A]'
  type: boolean
  inputBinding:
    prefix: -cm
- id: in_rm
  doc: '[NB_R]:[NB_C]:[NB_A]:[NB_B]:[NB_L]:[NB_G]:[NB_I]'
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_size_context_selection
  doc: "[NUMBER],  --selection [NUMBER]\nSize of the context selection model (integer).\n\
    Default context selection: 12."
  type: boolean
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- JARVIS
