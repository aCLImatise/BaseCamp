class: CommandLineTool
id: socru_species.cwl
inputs:
- id: in_extended
  doc: "Extended information about the species databases (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --extended
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- socru_species
