class: CommandLineTool
id: run_musicc.py.cwl
inputs:
- id: in_out
  doc: "Output destination for corrected abundance (default:\nMUSiCC.tab)"
  type: File?
  inputBinding:
    prefix: --out
- id: in_input_format
  doc: "Option indicating the format of the input file\n(default: tab)"
  type: string?
  inputBinding:
    prefix: --input_format
- id: in_output_format
  doc: "Option indicating the format of the output file\n(default: tab)"
  type: File?
  inputBinding:
    prefix: --output_format
- id: in_normalize
  doc: 'Apply MUSiCC normalization (default: false)'
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_correct
  doc: "Correct abundance per-sample using MUSiCC (default:\nfalse)"
  type: string?
  inputBinding:
    prefix: --correct
- id: in_performance
  doc: "Calculate model performance on various gene sets (may\nadd to running time)\
    \ (default: false)"
  type: boolean?
  inputBinding:
    prefix: --performance
- id: in_verbose
  doc: 'Increase verbosity of module (default: false)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output destination for corrected abundance (default:\nMUSiCC.tab)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_output_format
  doc: "Option indicating the format of the output file\n(default: tab)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints: []
cwlVersion: v1.1
baseCommand:
- run_musicc.py
