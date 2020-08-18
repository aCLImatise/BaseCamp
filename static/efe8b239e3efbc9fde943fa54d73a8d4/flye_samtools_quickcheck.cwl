class: CommandLineTool
id: ../../../flye_samtools_quickcheck.cwl
inputs:
- id: verbose_output_repeat
  doc: verbose output (repeat for more verbosity)
  type: boolean
  inputBinding:
    prefix: -v
- id: suppress_warning_messages
  doc: suppress warning messages
  type: boolean
  inputBinding:
    prefix: -q
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: quickcheck
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- quickcheck
