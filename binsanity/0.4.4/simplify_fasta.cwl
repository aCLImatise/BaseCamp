class: CommandLineTool
id: ../../../simplify_fasta.cwl
inputs:
- id: specify_name_input
  doc: Specify the name of the input file
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_name_output
  doc: Specify the name for the output file
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- simplify-fasta
