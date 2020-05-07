class: CommandLineTool
id: fetch.cwl
inputs:
- id: config
  doc: Use <file> as configuration file
  type: File
  inputBinding:
    prefix: --config
- id: w
  doc: Width of FASTA output [80]
  type: long
  inputBinding:
    prefix: -w
- id: f
  doc: Produce FASTA output
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: Generate CRC64 checksums
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: Reverse complement sequence (implies -f)
  type: boolean
  inputBinding:
    prefix: -r
- id: k
  doc: Keep query name as FASTA header (implies -f)
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: Print all entries when multiple are found
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: Append sequence length (; LEN=n) to the FASTA header
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- fetch
