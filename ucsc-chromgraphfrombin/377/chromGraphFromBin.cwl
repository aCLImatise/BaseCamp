class: CommandLineTool
id: ../../../chromGraphFromBin.cwl
inputs:
- id: in_chrom
  doc: '- restrict output to single chromosome'
  type: string
  inputBinding:
    prefix: -chrom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromGraphFromBin
