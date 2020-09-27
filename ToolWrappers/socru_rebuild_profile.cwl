class: CommandLineTool
id: socru_rebuild_profile.cwl
inputs:
- id: in_output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: File
  inputBinding:
    prefix: --output_file
- id: in_prefix
  doc: 'Prefix (default: GS)'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_profile_filename
  doc: profile.txt from database
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- socru_rebuild_profile
