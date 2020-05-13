class: CommandLineTool
id: raven.cwl
inputs:
- id: polishing_rounds
  doc: 'default: 2 number of times racon is invoked'
  type: long
  inputBinding:
    prefix: --polishing-rounds
- id: match
  doc: 'default: 3 score for matching bases'
  type: long
  inputBinding:
    prefix: --match
- id: mismatch
  doc: 'default: -5 score for mismatching bases'
  type: long
  inputBinding:
    prefix: --mismatch
- id: gap
  doc: 'default: -4 gap penalty (must be negative)'
  type: long
  inputBinding:
    prefix: --gap
- id: graphical_fragment_assembly
  doc: prints the assemblg graph in GFA format
  type: string
  inputBinding:
    prefix: --graphical-fragment-assembly
- id: resume
  doc: resume previous run from last checkpoint
  type: boolean
  inputBinding:
    prefix: --resume
- id: threads
  doc: 'default: 1 number of threads'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- raven
