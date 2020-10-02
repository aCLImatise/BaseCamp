class: CommandLineTool
id: funcannot.cwl
inputs:
- id: in_geneid
  doc: specifies common genelist identifier in VCF file(s)
  type: File
  inputBinding:
    prefix: --geneid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funcannot
