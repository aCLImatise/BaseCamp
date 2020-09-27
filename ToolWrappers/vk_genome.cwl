class: CommandLineTool
id: vk_genome.cwl
inputs:
- id: in_directory
  doc: Set Genome Directory
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
- id: in_location
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ncbi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wormbase
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vk
- genome
