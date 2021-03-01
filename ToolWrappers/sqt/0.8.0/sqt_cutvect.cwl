class: CommandLineTool
id: sqt_cutvect.cwl
inputs:
- id: in_vector
  doc: FASTA with vector sequence(s)
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: FASTA/FASTQ with read
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqt
- cutvect
