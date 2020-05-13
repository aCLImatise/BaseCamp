class: CommandLineTool
id: mmseqs_result2flat.cwl
inputs:
- id: use_fast_a_header
  doc: false           use the id parsed from the fasta header as the index key instead
    of using incrementing numeric identifiers
  type: boolean
  inputBinding:
    prefix: --use-fasta-header
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- result2flat
