class: CommandLineTool
id: hubward_liftover.cwl
inputs:
- id: in_from_assembly
  doc: 'Source assembly (default: -)'
  type: string
  inputBinding:
    prefix: --from_assembly
- id: in_to_assembly
  doc: "Destination assembly (default: -)\n"
  type: string
  inputBinding:
    prefix: --to_assembly
- id: in_dirname
  doc: Single study to liftover
  type: string
  inputBinding:
    position: 0
- id: in_newdir
  doc: Destination directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hubward
- liftover
