class: CommandLineTool
id: graftM_update.cwl
inputs:
- id: in_graft_m_package
  doc: GraftM package to update
  type: string
  inputBinding:
    prefix: --graftm_package
- id: in_regenerate_diamond_db
  doc: Recreate the diamond DB in the package
  type: boolean
  inputBinding:
    prefix: --regenerate_diamond_db
- id: in_taxonomy
  doc: File containing two tab separated columns, the first with the ID of the sequences,
    the second with the taxonomy string (required unless --rerooted_annotated_tree
    or --taxtastic_taxonomy and --taxtastic_seqinfo are specified)
  type: File
  inputBinding:
    prefix: --taxonomy
- id: in_sequences
  doc: Unaligned sequences (required unless --regenerate_diamond_db is set)
  type: string
  inputBinding:
    prefix: --sequences
- id: in_output
  doc: Name of output GraftM package
  type: File
  inputBinding:
    prefix: --output
- id: in_verbosity
  doc: '1 - 5, 1 being silent, 5 being noisy indeed (default: 4)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_log
  doc: output logging information to file
  type: File
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: output logging information to file
  type: File
  outputBinding:
    glob: $(inputs.in_log)
cwlVersion: v1.1
baseCommand:
- graftM
- update
