class: CommandLineTool
id: refgenie_listr.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_reference_assembly_id
  doc: "[GENOME [GENOME ...]], --genome [GENOME [GENOME ...]]\nReference assembly\
    \ ID, e.g. mm10.\n"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_genome
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
- refgenie
- listr
