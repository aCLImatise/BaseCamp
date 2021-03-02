class: CommandLineTool
id: MarkRepeats.cwl
inputs:
- id: in_no_coverage_repeats
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -noCoverageRepeats
- id: in_no_path_repeats
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -noPathRepeats
- id: in_redundancy
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -redundancy
- id: in_agressive
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -agressive
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_an_k
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MarkRepeats
