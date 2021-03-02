class: CommandLineTool
id: spades_bwa_index.cwl
inputs:
- id: in_bwt_construction_algorithm
  doc: 'BWT construction algorithm: is or rb2 [auto]'
  type: long?
  inputBinding:
    prefix: -a
- id: in_prefix_of_index
  doc: prefix of the index [same as fasta name]
  type: string?
  inputBinding:
    prefix: -p
- id: in_index_files_named
  doc: index files named as <in.fasta>.64.* instead of <in.fasta>.*
  type: boolean?
  inputBinding:
    prefix: '-6'
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-bwa
- index
