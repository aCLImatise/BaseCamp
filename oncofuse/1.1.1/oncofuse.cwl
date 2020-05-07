class: CommandLineTool
id: oncofuse.cwl
inputs:
- id: a
  doc: 'Genome assembly version, default is hg19. Allowed values: hg18, hg19, hg38'
  type: string
  inputBinding:
    prefix: -a
- id: p
  doc: Number of threads, uses all available processors by default
  type: long
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- oncofuse
