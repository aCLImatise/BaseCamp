class: CommandLineTool
id: ../../../ct_energy.cwl
inputs:
- id: in_na
  doc: =(RNA | DNA) (defaults to RNA)
  type: boolean
  inputBinding:
    prefix: --NA
- id: in_temperature
  doc: (defaults to 37)
  type: long
  inputBinding:
    prefix: --temperature
- id: in_suffix
  doc: (overrides temperature)
  type: string
  inputBinding:
    prefix: --suffix
- id: in_sodium
  doc: =<[Na+] in M> (defaults to 1)
  type: boolean
  inputBinding:
    prefix: --sodium
- id: in_magnesium
  doc: =<[Mg++] in M> (defaults to 0)
  type: boolean
  inputBinding:
    prefix: --magnesium
- id: in_polymer
  doc: ''
  type: boolean
  inputBinding:
    prefix: --polymer
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_logarithmic
  doc: ''
  type: boolean
  inputBinding:
    prefix: --logarithmic
- id: in_no_dangle
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nodangle
- id: in_simple
  doc: ''
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_vienna
  doc: ''
  type: boolean
  inputBinding:
    prefix: --Vienna
- id: in_coaxial
  doc: ''
  type: boolean
  inputBinding:
    prefix: --coaxial
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ct-energy
