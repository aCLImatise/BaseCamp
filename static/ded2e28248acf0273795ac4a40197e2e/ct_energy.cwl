class: CommandLineTool
id: ct_energy.cwl
inputs:
- id: in_temperature
  doc: (defaults to 37)
  type: long?
  inputBinding:
    prefix: --temperature
- id: in_suffix
  doc: (overrides temperature)
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_sodium
  doc: =<[Na+] in M> (defaults to 1)
  type: boolean?
  inputBinding:
    prefix: --sodium
- id: in_magnesium
  doc: =<[Mg++] in M> (defaults to 0)
  type: boolean?
  inputBinding:
    prefix: --magnesium
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ct-energy
