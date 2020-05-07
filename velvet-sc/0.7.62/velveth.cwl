class: CommandLineTool
id: velveth.cwl
inputs:
- id: directory
  doc: ': directory name for output files'
  type: Directory
  inputBinding:
    position: 0
- id: hash_length
  doc: ': odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)'
  type: string
  inputBinding:
    position: 1
- id: filename
  doc: ': path to sequence file or - for standard input'
  type: File
  inputBinding:
    position: 2
- id: strand_specific
  doc: ': for strand specific transcriptome sequencing data (default: off)'
  type: boolean
  inputBinding:
    prefix: -strand_specific
outputs: []
cwlVersion: v1.1
baseCommand:
- velveth
