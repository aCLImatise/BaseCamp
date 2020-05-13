class: CommandLineTool
id: seqsplit.cwl
inputs:
- id: o
  doc: ': output the new FASTA file to <file>'
  type: File
  inputBinding:
    prefix: -o
- id: frag_file
  doc: ': save one-line-per-frag coord summary file to <f>'
  type: string
  inputBinding:
    prefix: --fragfile
- id: in_format
  doc: ': specify sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: length
  doc: ': set max length of each unique seq frag to <n>'
  type: string
  inputBinding:
    prefix: --length
- id: overlap
  doc: ': set overlap length to <n> (total frag size = length+overlap)'
  type: string
  inputBinding:
    prefix: --overlap
- id: short_names
  doc: ': use short "frag1" names, not "<src>/<from>-<to>"'
  type: boolean
  inputBinding:
    prefix: --shortnames
outputs: []
cwlVersion: v1.1
baseCommand:
- seqsplit
