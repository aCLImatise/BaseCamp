class: CommandLineTool
id: oncotator.cwl
inputs:
- id: input_file
  doc: Input file to be annotated. Type is specified through options.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output file name of annotated file.
  type: string
  inputBinding:
    position: 1
- id: genome_build
  doc: 'Genome build. For example: hg19'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- oncotator
