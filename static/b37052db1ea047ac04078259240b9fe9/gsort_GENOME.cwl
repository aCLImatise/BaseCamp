class: CommandLineTool
id: gsort_GENOME.cwl
inputs:
- id: in_parent
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --parent
- id: in_memory
  doc: ''
  type: string?
  inputBinding:
    prefix: --memory
- id: in_chromosome_mappings
  doc: ''
  type: string?
  inputBinding:
    prefix: --chromosomemappings
- id: in_g_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsort
- GENOME
