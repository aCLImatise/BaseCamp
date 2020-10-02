class: CommandLineTool
id: pyprophet_merge.cwl
inputs:
- id: in_out
  doc: Merged OSW output file.  [required]
  type: File
  inputBinding:
    prefix: --out
- id: in_same_run
  doc: "/ --no-same_run  Assume input files are from same run (deletes\nrun information)."
  type: boolean
  inputBinding:
    prefix: --same_run
- id: in_template
  doc: Template OSW file.  [required]
  type: File
  inputBinding:
    prefix: --template
- id: in_in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Merged OSW output file.  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pyprophet
- merge
