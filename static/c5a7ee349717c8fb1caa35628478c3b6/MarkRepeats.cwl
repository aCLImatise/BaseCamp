class: CommandLineTool
id: ../../../MarkRepeats.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: agressive
  doc: ''
  type: boolean
  inputBinding:
    prefix: -agressive
- id: redundancy
  doc: ''
  type: boolean
  inputBinding:
    prefix: -redundancy
- id: no_path_repeats
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noPathRepeats
- id: no_coverage_repeats
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noCoverageRepeats
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- MarkRepeats
