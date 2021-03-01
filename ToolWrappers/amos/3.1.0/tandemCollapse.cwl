class: CommandLineTool
id: tandemCollapse.cwl
inputs:
- id: in_location_bank_directory
  doc: '- location of bank directory'
  type: Directory?
  inputBinding:
    prefix: -b
- id: in_config_file_specifies
  doc: '- config file that specifies locations of tandems'
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_location_misassemblies
  doc: '- output location of mis-assemblies in final layout'
  type: string?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tandemCollapse
