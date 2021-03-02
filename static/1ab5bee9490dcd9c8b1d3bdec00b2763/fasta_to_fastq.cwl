class: CommandLineTool
id: fasta_to_fastq.cwl
inputs:
- id: in_qv
  doc: ": Assign this as the fake quality values (default: '^')"
  type: string?
  inputBinding:
    prefix: -qv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_to_fastq
