class: CommandLineTool
id: ../../../concat.cwl
inputs:
- id: specify_directory_where
  doc: Specify directory where alignments are
  type: boolean
  inputBinding:
    prefix: -f
- id: specify_extension_alignments
  doc: Specify the extension for your alignments (must be in Fasta format)
  type: boolean
  inputBinding:
    prefix: -e
- id: prefix
  doc: 'Specify the prefix that links your alignments (ex: if you have two alignments
    TOBG_RpL10, TOBG_RpL24, the --Prefix would be TOBG'
  type: boolean
  inputBinding:
    prefix: --Prefix
- id: specify_output_file
  doc: Specify output file
  type: boolean
  inputBinding:
    prefix: -o
- id: specify_minimum_number
  doc: Specify the minimum number of sequences needed to be included in concatenation
  type: boolean
  inputBinding:
    prefix: -N
- id: extension
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: linker
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- concat
