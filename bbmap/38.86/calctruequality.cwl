class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/calctruequality.sh.cwl
inputs:
- id: variants_dot
  doc: The format can be produced by CallVariants.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- calctruequality.sh
