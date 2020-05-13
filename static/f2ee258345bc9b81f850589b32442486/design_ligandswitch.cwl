class: CommandLineTool
id: design_ligandswitch.py.cwl
inputs:
- id: file
  doc: Read file in *.inp format
  type: File
  inputBinding:
    prefix: --file
- id: input
  doc: Read custom structures and sequence constraints from stdin
  type: boolean
  inputBinding:
    prefix: --input
- id: ratio
  doc: 'Ratio of the alternative to binding competent state in percent (default: 90:10)'
  type: string
  inputBinding:
    prefix: --ratio
- id: ligand
  doc: 'Binding motif and energy of the ligand (default: "GAUACCAG&CCCUUGGCAGC;(...((((&)...)))...);-9.22")'
  type: string
  inputBinding:
    prefix: --ligand
- id: temperature
  doc: Temperature of the energy calculations.
  type: string
  inputBinding:
    prefix: --temperature
- id: number
  doc: Number of designs to generate
  type: string
  inputBinding:
    prefix: --number
- id: stop
  doc: Stop optimization run if no better solution is aquired after (stop) trials.
  type: string
  inputBinding:
    prefix: --stop
- id: mode
  doc: 'Mode for getting a new sequence: sample, sample_plocal, sample_clocal, random'
  type: string
  inputBinding:
    prefix: --mode
- id: kill
  doc: 'Timeout value of graph construction in seconds. (default: infinite)'
  type: string
  inputBinding:
    prefix: --kill
- id: graph_ml
  doc: Write a graphml file with the given filename.
  type: string
  inputBinding:
    prefix: --graphml
- id: csv
  doc: Write output as semi-colon csv file to stdout
  type: boolean
  inputBinding:
    prefix: --csv
- id: progress
  doc: Show progress of optimization
  type: boolean
  inputBinding:
    prefix: --progress
- id: debug
  doc: Show debug information of library
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- design-ligandswitch.py
