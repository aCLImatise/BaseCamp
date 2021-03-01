class: CommandLineTool
id: terminus_collapse.cwl
inputs:
- id: in_consensus_thresh
  doc: 'threshold for edge consensus [default: 0.5]'
  type: double?
  inputBinding:
    prefix: --consensus-thresh
- id: in_dirs
  doc: '...                         direcotories to read the group files from'
  type: string?
  inputBinding:
    prefix: --dirs
- id: in_out
  doc: prefix where output would be written
  type: string?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: "number of threads to use when writing down the collapsed quantifications [default:\
    \ 8]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- terminus
- collapse
