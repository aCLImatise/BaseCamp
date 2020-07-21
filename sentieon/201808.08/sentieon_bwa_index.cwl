class: CommandLineTool
id: ../../../sentieon_bwa_index.cwl
inputs:
- id: bwt_construction_algorithm
  doc: 'BWT construction algorithm: is or rb2 [auto]'
  type: string
  inputBinding:
    prefix: -a
- id: prefix_of_index
  doc: prefix of the index [same as fasta name]
  type: string
  inputBinding:
    prefix: -p
- id: index_files_named
  doc: 'index files named as <in.fasta>.64.* instead of <in.fasta>.* '
  type: boolean
  inputBinding:
    prefix: '-6'
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- index
