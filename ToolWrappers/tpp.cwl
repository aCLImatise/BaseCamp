class: CommandLineTool
id: tpp.cwl
inputs:
- id: in_replicon_ids
  doc: '# if multiple replicons/genomes/contigs/sequences were provided in -ref, give
    them names.'
  type: string
  inputBinding:
    prefix: -replicon-ids
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: -output
- id: in_reads_two
  doc: ''
  type: File
  inputBinding:
    prefix: -reads2
- id: in_reads_one
  doc: ''
  type: File
  inputBinding:
    prefix: -reads1
- id: in_ref
  doc: ''
  type: File
  inputBinding:
    prefix: -ref
- id: in_bwa
  doc: ''
  type: File
  inputBinding:
    prefix: -bwa
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tpp
