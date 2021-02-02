class: CommandLineTool
id: TurboFold_smp.cwl
inputs:
- id: in_sequence_dot
  doc: Default is no limit.
  type: string
  inputBinding:
    position: 0
- id: in_to_dot
  doc: SHAPEintercept
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TurboFold-smp
