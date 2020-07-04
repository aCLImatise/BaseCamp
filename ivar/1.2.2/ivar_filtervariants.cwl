class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ivar_filtervariants.cwl
inputs:
- id: minimum_fration_required
  doc: 'Minimum fration of files required to contain the same variant. Specify value
    within [0,1]. (Default: 1)'
  type: boolean
  inputBinding:
    prefix: -t
- id: text_file_one
  doc: A text file with one variant file per line.
  type: boolean
  inputBinding:
    prefix: -f
- id: required_prefix_output
  doc: (Required) Prefix for the output filtered tsv file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- filtervariants
