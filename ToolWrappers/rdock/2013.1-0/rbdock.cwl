class: CommandLineTool
id: rbdock.cwl
inputs:
- id: in_input
  doc: input file
  type: File?
  inputBinding:
    prefix: -input
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: -output
- id: in_receptor
  doc: receptor file
  type: File?
  inputBinding:
    prefix: -receptor
- id: in_protocol
  doc: protocol file
  type: File?
  inputBinding:
    prefix: -protocol
- id: in_runs
  doc: number of runs
  type: long?
  inputBinding:
    prefix: -runs
- id: in_trace
  doc: trace level for debugging
  type: long?
  inputBinding:
    prefix: -trace
- id: in_seed
  doc: random seed
  type: long?
  inputBinding:
    prefix: -seed
- id: in_ap
  doc: protonate groups
  type: boolean?
  inputBinding:
    prefix: -ap
- id: in_an
  doc: DEprotonate groups
  type: boolean?
  inputBinding:
    prefix: -an
- id: in_all_h
  doc: read all Hs
  type: boolean?
  inputBinding:
    prefix: -allH
- id: in_target
  doc: target score
  type: string?
  inputBinding:
    prefix: -target
- id: in_cont
  doc: continue even if target met
  type: boolean?
  inputBinding:
    prefix: -cont
- id: in_receptor_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_protocol_dot_prm
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rbdock
