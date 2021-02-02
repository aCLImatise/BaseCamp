class: CommandLineTool
id: crux_pipeline_decoy_..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mass_spectra
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- pipeline
- decoy_.
