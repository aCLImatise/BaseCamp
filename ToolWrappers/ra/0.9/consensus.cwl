class: CommandLineTool
id: consensus.cwl
inputs:
- id: in_reads
  doc: reads file (string)
  type: boolean
  inputBinding:
    prefix: --reads
- id: in_contigs
  doc: contigs file (string)
  type: boolean
  inputBinding:
    prefix: --contigs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- consensus
