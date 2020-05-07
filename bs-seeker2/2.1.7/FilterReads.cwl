class: CommandLineTool
id: FilterReads.py.cwl
inputs:
- id: i
  doc: Name of the input qseq/fastq/fasta/sequence file
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: Name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: k
  doc: Would not filter low quality reads if specified, only applied for qseq format
  type: boolean
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterReads.py
