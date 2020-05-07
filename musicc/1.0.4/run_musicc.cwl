class: CommandLineTool
id: run_musicc.py.cwl
inputs:
- id: input_file
  doc: Input abundance file to correct
  type: string
  inputBinding:
    position: 0
- id: out
  doc: 'Output destination for corrected abundance (default: MUSiCC.tab)'
  type: string
  inputBinding:
    prefix: --out
- id: input_format
  doc: 'Option indicating the format of the input file (default: tab)'
  type: string
  inputBinding:
    prefix: --input_format
- id: output_format
  doc: 'Option indicating the format of the output file (default: tab)'
  type: string
  inputBinding:
    prefix: --output_format
- id: normalize
  doc: 'Apply MUSiCC normalization (default: false)'
  type: boolean
  inputBinding:
    prefix: --normalize
- id: correct
  doc: 'Correct abundance per-sample using MUSiCC (default: false)'
  type: string
  inputBinding:
    prefix: --correct
- id: performance
  doc: 'Calculate model performance on various gene sets (may add to running time)
    (default: false)'
  type: boolean
  inputBinding:
    prefix: --performance
- id: verbose
  doc: 'Increase verbosity of module (default: false)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- run_musicc.py
