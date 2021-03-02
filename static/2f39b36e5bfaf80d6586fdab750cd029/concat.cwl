class: CommandLineTool
id: concat.cwl
inputs:
- id: in_specify_directory_where
  doc: Specify directory where alignments are
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_specify_extension_be
  doc: Specify the extension for your alignments (must be in Fasta format)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_prefix
  doc: 'Specify the prefix that links your alignments (ex: if you have two alignments
    TOBG_RpL10, TOBG_RpL24, the --Prefix would be TOBG'
  type: boolean?
  inputBinding:
    prefix: --Prefix
- id: in_specify_output_file
  doc: Specify output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_specify_minimum_number
  doc: Specify the minimum number of sequences needed to be included in concatenation
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_extension
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_linker
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: Specify output file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- concat
