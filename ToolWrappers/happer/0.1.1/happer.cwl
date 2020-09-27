class: CommandLineTool
id: happer.cwl
inputs:
- id: in_out
  doc: "write haplotype sequences to the specified file;\ndefault is the terminal\
    \ (stdout)\n"
  type: File
  inputBinding:
    prefix: --out
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_seq_file
  doc: input sequences in Fasta format
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: haplotypes annotated in BED format
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- happer
