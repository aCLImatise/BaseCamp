class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extractDEs.cwl
inputs:
- id: output
  doc: 'Write output to this file (STDOUT if omitted). '
  type: boolean
  inputBinding:
    prefix: -output
- id: regions
  doc: 'the genomic regions, in BED format, corresponding to the input  sequences
    for Zagros. '
  type: boolean
  inputBinding:
    prefix: -regions
- id: mapper
  doc: 'the mapper used to map the reads (Default: rmap) '
  type: boolean
  inputBinding:
    prefix: -mapper
- id: tech
  doc: 'the technology type used in the experiment (default iCLIP) '
  type: boolean
  inputBinding:
    prefix: -tech
- id: verbose
  doc: 'print more run info (default: false '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: mapped_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extractDEs
