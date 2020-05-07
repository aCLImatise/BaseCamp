class: CommandLineTool
id: cfm_annotate.cwl
inputs:
- id: cfm_annotate_exe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: smiles_or_inch_i
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: id
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ppm_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: abs_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: param_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-annotate
