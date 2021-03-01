class: CommandLineTool
id: design_thermoswitch.py.cwl
inputs:
- id: in_package
  doc: "Chose the calculation package: hotknots, pkiss,\nnupack, or vrna/ViennaRNA\
    \ (default: vrna)"
  type: string?
  inputBinding:
    prefix: --package
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
- design-thermoswitch.py
