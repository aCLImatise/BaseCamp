class: CommandLineTool
id: ../../../chromosomer_transfer.cwl
inputs:
- id: in_format
  doc: "the format of a file of annotated features (bed, gff3\nor vcf) (default: bed)\n"
  type: string
  inputBinding:
    prefix: --format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer
