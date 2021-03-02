class: CommandLineTool
id: pyfastx_index.cwl
inputs:
- id: in_full
  doc: build full index, base composition will be calculated
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_fast_x
  doc: fasta or fastq file, gzip support
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyfastx
- index
