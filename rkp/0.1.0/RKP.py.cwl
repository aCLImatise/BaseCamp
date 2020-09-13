class: CommandLineTool
id: ../../../RKP.py.cwl
inputs:
- id: in_accept_or
  doc: ''
  type: string
  inputBinding:
    prefix: --acceptor
- id: in_hybrid
  doc: ''
  type: string
  inputBinding:
    prefix: --hybrid
- id: in_donor
  doc: ''
  type: string
  inputBinding:
    prefix: --donor
- id: in_km_er_length
  doc: ''
  type: long
  inputBinding:
    prefix: --kmerlength
- id: in_threshold_accept_or
  doc: ''
  type: string
  inputBinding:
    prefix: --thresholdAcceptor
- id: in_threshold_donor
  doc: ''
  type: string
  inputBinding:
    prefix: --thresholdDonor
- id: in_accept_or_ref
  doc: ''
  type: string
  inputBinding:
    prefix: --acceptorRef
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_accept_or_ref_gff
  doc: ''
  type: string
  inputBinding:
    prefix: --acceptorRefGff
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RKP.py
