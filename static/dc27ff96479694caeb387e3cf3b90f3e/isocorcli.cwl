class: CommandLineTool
id: isocorcli.cwl
inputs:
- id: in_path_metabolites_database
  doc: path to metabolites database
  type: File?
  inputBinding:
    prefix: -M
- id: in_path_derivatives_database
  doc: path to derivatives database
  type: File?
  inputBinding:
    prefix: -D
- id: in_path_isotopes_database
  doc: path to isotopes database
  type: File?
  inputBinding:
    prefix: -I
- id: in_tracer
  doc: the isotopic tracer (e.g. "13C")
  type: long?
  inputBinding:
    prefix: --tracer
- id: in_resolution
  doc: "HR only: resolution of the mass spectrometer (e.g.\n\"1e4\")"
  type: double?
  inputBinding:
    prefix: --resolution
- id: in_mz_of_resolution
  doc: 'HR only: mz at which resolution is given (e.g. "400")'
  type: long?
  inputBinding:
    prefix: --mz_of_resolution
- id: in_resolution_formula_code
  doc: 'HR only: spectrometer formula code'
  type: string?
  inputBinding:
    prefix: --resolution_formula_code
- id: in_tracer_purity
  doc: purity vector of the tracer
  type: string?
  inputBinding:
    prefix: --tracer_purity
- id: in_correct_na_tracer
  doc: flag to correct tracer natural abundance
  type: boolean?
  inputBinding:
    prefix: --correct_NA_tracer
- id: in_verbose
  doc: flag to enable verbose logs
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isocorcli
