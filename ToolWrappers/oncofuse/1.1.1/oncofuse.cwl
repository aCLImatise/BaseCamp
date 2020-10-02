class: CommandLineTool
id: oncofuse.cwl
inputs:
- id: in_genome_assembly_version
  doc: 'Genome assembly version, default is hg19. Allowed values: hg18, hg19, hg38'
  type: long
  inputBinding:
    prefix: -a
- id: in_number_threads_uses
  doc: Number of threads, uses all available processors by default
  type: long
  inputBinding:
    prefix: -p
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncofuse
