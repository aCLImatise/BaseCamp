class: CommandLineTool
id: macpack.cwl
inputs:
- id: in_appname
  doc: :appname    Application Name
  type: string?
  inputBinding:
    prefix: -appname
- id: in_output
  doc: :OUTPUT      Output directory
  type: Directory?
  inputBinding:
    prefix: -output
- id: in_assembly_to_pack
  doc: Assembly to pack
  type: string?
  inputBinding:
    prefix: -a
- id: in_icon
  doc: Icon filename
  type: File?
  inputBinding:
    prefix: -icon
- id: in_resource_additional_files
  doc: ',resource2          Additional files to bundle'
  type: long?
  inputBinding:
    prefix: -r
- id: in__mode_application
  doc: '[winforms|cocoa|x11|console] The mode for the application'
  type: boolean?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: :OUTPUT      Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- macpack
