class: CommandLineTool
id: velveth.cwl
inputs:
- id: in_strand_specific
  doc: ': for strand specific transcriptome sequencing data (default: off)'
  type: boolean?
  inputBinding:
    prefix: -strand_specific
- id: in_directory
  doc: ': directory name for output files'
  type: Directory
  inputBinding:
    position: 0
- id: in_hash_length
  doc: ': odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)'
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ': path to sequence file or - for standard input'
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- velveth
