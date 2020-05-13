class: CommandLineTool
id: locarna_mcc.cwl
inputs:
- id: f
  doc: Structure annotation file. Mandatory argument.
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: Parameter file for RNAalifold
  type: string
  inputBinding:
    prefix: -P
- id: ali_fold_args
  doc: 'Alifold arguments (default: same as mlocarna)'
  type: boolean
  inputBinding:
    prefix: --alifold-args
- id: assume_fast_a
  doc: Assume that input is in fasta format (instead of clustalw aln)
  type: boolean
  inputBinding:
    prefix: --assume-fasta
- id: man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna_mcc
