class: CommandLineTool
id: make_kreport.py.cwl
inputs:
- id: kraken
  doc: Kraken output file (5 tab-delimited columns, taxid in 3rd column)
  type: string
  inputBinding:
    prefix: --kraken
- id: taxonomy
  doc: Output taxonomy file from make_ktaxonomy.py
  type: string
  inputBinding:
    prefix: --taxonomy
- id: output
  doc: Output kraken report file
  type: string
  inputBinding:
    prefix: --output
- id: use_read_len
  doc: 'Make report file using sum of read lengths [default: read counts]'
  type: boolean
  inputBinding:
    prefix: --use-read-len
outputs: []
cwlVersion: v1.1
baseCommand:
- make_kreport.py
