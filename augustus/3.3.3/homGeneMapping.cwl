class: CommandLineTool
id: homGeneMapping.cwl
inputs:
- id: name_of_genome_n
  doc: path/to/genefile/of/genome_N  path/to/hintsfile/of/genome_N
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- homGeneMapping
