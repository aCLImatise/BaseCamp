class: CommandLineTool
id: getMappingStats.pl.cwl
inputs:
- id: in_min
  doc: <#> (minimum length to consider a sequence an adapter-dimer, def. 15)
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_genome
  doc: (limit analysis to alignment for this genome)
  type: string?
  inputBinding:
    prefix: -genome
- id: in_sample_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_sample
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_directory_two
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getMappingStats.pl
