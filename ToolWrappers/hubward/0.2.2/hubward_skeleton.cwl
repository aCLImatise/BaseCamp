class: CommandLineTool
id: hubward_skeleton.cwl
inputs:
- id: in_host
  doc: \
  type: string?
  inputBinding:
    prefix: --host
- id: in_use_metadata_builder
  doc: "Sets up a metadata-builder.py script instead of a\nmetadata.yaml config file.\
    \ Useful for more complicated\nstudies (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --use-metadata-builder
- id: in_dirname
  doc: Path to contain skeleton project
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hubward
- skeleton
