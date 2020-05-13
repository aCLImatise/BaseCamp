class: CommandLineTool
id: bioformats_flanknfilter.cwl
inputs:
- id: input_file
  doc: an input file of features to be filtered
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: a FASTA file of sequences the features are related to
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: an output file of filtered features
  type: string
  inputBinding:
    position: 2
- id: type
  doc: 'the input file type (default: bed)'
  type: string
  inputBinding:
    prefix: --type
- id: length
  doc: 'the flanking region length (default: 100)'
  type: long
  inputBinding:
    prefix: --length
- id: strict
  doc: 'require flanks to have exactly the specified length (it may be shorter if
    a feature is located near a sequence start or end) (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- flanknfilter
