class: CommandLineTool
id: design_cofold.py.cwl
inputs:
- id: input
  doc: Read custom structures and sequence constraints from stdin
  type: boolean
  inputBinding:
    prefix: --input
- id: package
  doc: 'Chose the calculation package: hotknots, pkiss, nupack, or vrna/ViennaRNA
    (default: vrna)'
  type: string
  inputBinding:
    prefix: --package
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
- id: reporter
  doc: The coding sequence context, excluding the start codon that should be part
    of the sequence constraint. Default are the first 66 nucleotides of eGFP.
  type: string
  inputBinding:
    prefix: --reporter
outputs: []
cwlVersion: v1.1
baseCommand:
- design-cofold.py
