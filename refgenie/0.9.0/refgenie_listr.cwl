class: CommandLineTool
id: refgenie_listr.cwl
inputs:
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: g
  doc: '[GENOME [GENOME ...]], --genome [GENOME [GENOME ...]] Reference assembly ID,
    e.g. mm10.'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- listr
