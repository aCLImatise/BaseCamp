class: CommandLineTool
id: design_cofold.py.cwl
inputs:
- id: in_input
  doc: Read custom structures and sequence constraints from
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_temperature
  doc: Temperature of the energy calculations.
  type: string?
  inputBinding:
    prefix: --temperature
- id: in_number
  doc: Number of designs to generate
  type: long?
  inputBinding:
    prefix: --number
- id: in_stop
  doc: "Stop optimization run if no better solution is aquired\nafter (stop) trials."
  type: string?
  inputBinding:
    prefix: --stop
- id: in_mode
  doc: "Mode for getting a new sequence: sample,\nsample_plocal, sample_clocal, random"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_kill
  doc: "Timeout value of graph construction in seconds.\n(default: infinite)"
  type: string?
  inputBinding:
    prefix: --kill
- id: in_graph_ml
  doc: Write a graphml file with the given filename.
  type: File?
  inputBinding:
    prefix: --graphml
- id: in_csv
  doc: Write output as semi-colon csv file to stdout
  type: File?
  inputBinding:
    prefix: --csv
- id: in_progress
  doc: Show progress of optimization
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_debug
  doc: Show debug information of library
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_reporter
  doc: "The coding sequence context, excluding the start codon\nthat should be part\
    \ of the sequence constraint.\nDefault are the first 66 nucleotides of eGFP.\n"
  type: long?
  inputBinding:
    prefix: --reporter
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_stdin
  doc: -q PACKAGE, --package PACKAGE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv
  doc: Write output as semi-colon csv file to stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_csv)
hints: []
cwlVersion: v1.1
baseCommand:
- design-cofold.py
