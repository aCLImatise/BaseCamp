class: CommandLineTool
id: gdtools_VCF2GD.cwl
inputs:
- id: output
  doc: name of output Genome Diff file (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- VCF2GD
