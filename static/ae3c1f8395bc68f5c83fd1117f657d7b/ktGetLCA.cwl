class: CommandLineTool
id: ktGetLCA.cwl
inputs:
- id: in_streaming_mode_expected
  doc: "Streaming mode. Each line is expected to be a whitespace-separated list\n\
    of inputs for a single lowest common ancestor computation. Taxonomy will\nbe preloaded,\
    \ allowing for faster computation after a small upfront time.\n"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_acc_slash_tax_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktGetLCA
