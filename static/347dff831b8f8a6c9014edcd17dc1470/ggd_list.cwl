class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_list.cwl
inputs:
- id: pattern
  doc: (Optional) pattern to match the name of the ggd data package.
  type: string
  inputBinding:
    prefix: --pattern
- id: prefix
  doc: (Optional) The name or the full directory path to a conda environment where
    a ggd recipe is stored. (Only needed if not getting file paths for files in the
    current conda enviroment)
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- list
