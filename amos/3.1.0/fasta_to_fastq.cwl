class: CommandLineTool
id: fasta_to_fastq.cwl
inputs:
- id: qv
  doc: ": Assign this as the fake quality values (default: '^')"
  type: string
  inputBinding:
    prefix: -qv
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_to_fastq
