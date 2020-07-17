class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/socru_rebuild_profile.cwl
inputs:
- id: output_file
  doc: 'Output filename (default: updated_profile.txt)'
  type: string
  inputBinding:
    prefix: --output_file
- id: prefix
  doc: 'Prefix (default: GS)'
  type: string
  inputBinding:
    prefix: --prefix
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
- id: profile_filename
  doc: profile.txt from database
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- socru_rebuild_profile
