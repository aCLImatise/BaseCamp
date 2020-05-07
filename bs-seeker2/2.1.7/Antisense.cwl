class: CommandLineTool
id: Antisense.py.cwl
inputs:
- id: '50'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: 'input file, format: qseq/fastq/fasta/sequence'
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: Name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: l
  doc: 'Length to show in one line for fasta. [Default: show all in one line]'
  type: long
  inputBinding:
    prefix: -l
- id: k
  doc: Would not filter low quality reads if specified
  type: boolean
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- Antisense.py
