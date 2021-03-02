class: CommandLineTool
id: validate_network.py.cwl
inputs:
- id: in_no_bad
  doc: "Use bad events as a separate state (Default: --bad)\n(default: True)"
  type: boolean?
  inputBinding:
    prefix: --no-bad
- id: in_batch
  doc: "Batch size (number of chunks to run in parallel)\n(default: 200)"
  type: long?
  inputBinding:
    prefix: --batch
- id: in_no_transducer
  doc: "Model is a transducer (Default: --transducer)\n(default: True)"
  type: boolean?
  inputBinding:
    prefix: --no-transducer
- id: in_model
  doc: File to read model description from
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: HDF5 file containing chunks
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
- validate_network.py
