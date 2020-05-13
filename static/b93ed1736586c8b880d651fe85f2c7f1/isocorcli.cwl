class: CommandLineTool
id: isocorcli.cwl
inputs:
- id: input_data
  doc: measurements file to process
  type: string
  inputBinding:
    position: 0
- id: m
  doc: path to metabolites database
  type: string
  inputBinding:
    prefix: -M
- id: d
  doc: path to derivatives database
  type: string
  inputBinding:
    prefix: -D
- id: i
  doc: path to isotopes database
  type: string
  inputBinding:
    prefix: -I
- id: tracer
  doc: the isotopic tracer (e.g. "13C")
  type: string
  inputBinding:
    prefix: --tracer
- id: resolution
  doc: 'HR only: resolution of the mass spectrometer (e.g. "1e4")'
  type: string
  inputBinding:
    prefix: --resolution
- id: mz_of_resolution
  doc: 'HR only: mz at which resolution is given (e.g. "400")'
  type: string
  inputBinding:
    prefix: --mz_of_resolution
- id: resolution_formula_code
  doc: 'HR only: spectrometer formula code'
  type: string
  inputBinding:
    prefix: --resolution_formula_code
- id: tracer_purity
  doc: purity vector of the tracer
  type: string
  inputBinding:
    prefix: --tracer_purity
- id: correct_na_tracer
  doc: flag to correct tracer natural abundance
  type: boolean
  inputBinding:
    prefix: --correct_NA_tracer
- id: verbose
  doc: flag to enable verbose logs
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- isocorcli
