class: CommandLineTool
id: spades_gmapper.cwl
inputs:
- id: k
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: t
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: -t
- id: tmp_dir
  doc: scratch directory to use
  type: string
  inputBinding:
    prefix: --tmp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-gmapper
