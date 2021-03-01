class: CommandLineTool
id: biscuit_index.cwl
inputs:
- id: in_bwt_construction_algorithm
  doc: 'BWT construction algorithm: bwtsw or is [auto]'
  type: string?
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biscuit
- index
