class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bwa_index.cwl
inputs:
- id: bwt_construction_algorithm
  doc: 'BWT construction algorithm: bwtsw, is or rb2 [auto]'
  type: string
  inputBinding:
    prefix: -a
- id: prefix_of_index
  doc: prefix of the index [same as fasta name]
  type: string
  inputBinding:
    prefix: -p
- id: block_size_bwtsw
  doc: block size for the bwtsw algorithm (effective with -a bwtsw) [10000000]
  type: long
  inputBinding:
    prefix: -b
- id: index_files_named
  doc: 'index files named as <in.fasta>.64.* instead of <in.fasta>.* '
  type: boolean
  inputBinding:
    prefix: '-6'
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- index
