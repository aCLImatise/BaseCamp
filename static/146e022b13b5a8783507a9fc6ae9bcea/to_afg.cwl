class: CommandLineTool
id: to_afg.cwl
inputs:
- id: reads
  doc: (required) input fasta/fastq reads file
  type: File
  inputBinding:
    prefix: --reads
- id: fast_q
  doc: 'default: fasta format format of input reads file'
  type: boolean
  inputBinding:
    prefix: --fastq
- id: out
  doc: output afg reads file
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- to_afg
