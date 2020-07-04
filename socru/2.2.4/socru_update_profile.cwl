class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/socru_update_profile.cwl
inputs:
- id: output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: string
  inputBinding:
    prefix: --output_file
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: so_cru_output_filename
  doc: Socru output file
  type: string
  inputBinding:
    position: 0
- id: profile_filename
  doc: profile.txt from database
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- socru_update_profile
