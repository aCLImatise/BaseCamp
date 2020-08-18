class: CommandLineTool
id: ../../../oncofuse.cwl
inputs:
- id: genome_assembly_version
  doc: 'Genome assembly version, default is hg19. Allowed values: hg18, hg19, hg38'
  type: string
  inputBinding:
    prefix: -a
- id: number_threads_uses
  doc: Number of threads, uses all available processors by default
  type: long
  inputBinding:
    prefix: -p
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- oncofuse
