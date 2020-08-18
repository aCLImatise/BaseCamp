class: CommandLineTool
id: ../../../humann2_genefamilies_genus_level.cwl
inputs:
- id: input
  doc: the gene families input table
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the output table
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_genefamilies_genus_level
