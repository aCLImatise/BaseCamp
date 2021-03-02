class: CommandLineTool
id: make_kreport.py.cwl
inputs:
- id: in_kraken
  doc: "Kraken output file (5 tab-delimited columns, taxid in\n3rd column)"
  type: File?
  inputBinding:
    prefix: --kraken
- id: in_taxonomy
  doc: Output taxonomy file from make_ktaxonomy.py
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_output
  doc: Output kraken report file
  type: File?
  inputBinding:
    prefix: --output
- id: in_use_read_len
  doc: "Make report file using sum of read lengths [default:\nread counts]\n"
  type: boolean?
  inputBinding:
    prefix: --use-read-len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_kraken
  doc: "Kraken output file (5 tab-delimited columns, taxid in\n3rd column)"
  type: File?
  outputBinding:
    glob: $(inputs.in_kraken)
- id: out_taxonomy
  doc: Output taxonomy file from make_ktaxonomy.py
  type: File?
  outputBinding:
    glob: $(inputs.in_taxonomy)
- id: out_output
  doc: Output kraken report file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- make_kreport.py
