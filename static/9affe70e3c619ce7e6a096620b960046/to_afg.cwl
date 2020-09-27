class: CommandLineTool
id: to_afg.cwl
inputs:
- id: in_reads
  doc: "(required)\ninput fasta/fastq reads file"
  type: File
  inputBinding:
    prefix: --reads
- id: in_fast_q
  doc: "default: fasta format\nformat of input reads file"
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_out
  doc: output afg reads file
  type: File
  inputBinding:
    prefix: --out
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output afg reads file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- to_afg
