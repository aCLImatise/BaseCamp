class: CommandLineTool
id: design_energyshift.py.cwl
inputs:
- id: in_file
  doc: Read file in *.inp format
  type: File?
  inputBinding:
    prefix: --file
- id: in_input
  doc: Read custom structures and sequence constraints from
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_objective
  doc: "Chose the objective function: 1 for abs differences\nand 2 for squared (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --objective
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
- id: in_model
  doc: "Model for getting a new sequence: uniform, nussinov,\nbasepairs, stacking"
  type: string?
  inputBinding:
    prefix: --model
- id: in_energies
  doc: "Target Energies for design. String of comma separated\nfloat values."
  type: double?
  inputBinding:
    prefix: --energies
- id: in_stop
  doc: "Stop optimization run of unpaired bases if no better\nsolution is aquired\
    \ after (stop) trials. 0 is no local\noptimization."
  type: long?
  inputBinding:
    prefix: --stop
- id: in_csv
  doc: Write output as semi-colon csv file to stdout
  type: File?
  inputBinding:
    prefix: --csv
- id: in_kill
  doc: "Timeout value of graph construction in seconds.\n(default: infinite)"
  type: string?
  inputBinding:
    prefix: --kill
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
- design-energyshift.py
