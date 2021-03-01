class: CommandLineTool
id: socru_update_profile.cwl
inputs:
- id: in_output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_so_cru_output_filename
  doc: Socru output file
  type: string
  inputBinding:
    position: 0
- id: in_profile_filename
  doc: profile.txt from database
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- socru_update_profile
