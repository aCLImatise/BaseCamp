class: CommandLineTool
id: gdtools_GD2CIRCOS.cwl
inputs:
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: name of directory to save Circos configuration files and scripts (DEFAULT=circos_output)
  type: string
  inputBinding:
    prefix: --output
- id: distance
  doc: the distance from the center the first axis will be in proportion to the default
    size (DEFAULT=1.0)
  type: string
  inputBinding:
    prefix: --distance
- id: feature
  doc: the scale of the features in proportion to the default size (DEFAULT=1.0)
  type: string
  inputBinding:
    prefix: --feature
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- GD2CIRCOS
