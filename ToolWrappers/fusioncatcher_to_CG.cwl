class: CommandLineTool
id: fusioncatcher_to_CG.cwl
inputs:
- id: in_input_format
  doc: File type of the file to convert
  type: string
  inputBinding:
    prefix: --input-format
- id: in_data_directory
  doc: "FusionCatcher's data dir\n(/opt/fusioncatcher/data/ensembl_v...)"
  type: Directory
  inputBinding:
    prefix: --data-directory
- id: in_output
  doc: output filename; '-' for stdout
  type: File
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename; '-' for stdout
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- fusioncatcher-to-CG
