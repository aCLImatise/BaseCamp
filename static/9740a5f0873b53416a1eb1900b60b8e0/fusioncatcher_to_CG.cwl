class: CommandLineTool
id: fusioncatcher_to_CG.cwl
inputs:
- id: input_file
  doc: File to convert
  type: string
  inputBinding:
    position: 0
- id: input_format
  doc: File type of the file to convert
  type: string
  inputBinding:
    prefix: --input-format
- id: data_directory
  doc: FusionCatcher's data dir (/opt/fusioncatcher/data/ensembl_v...)
  type: string
  inputBinding:
    prefix: --data-directory
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fusioncatcher-to-CG
