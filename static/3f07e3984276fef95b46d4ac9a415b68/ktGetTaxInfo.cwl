class: CommandLineTool
id: ktGetTaxInfo.cwl
inputs:
- id: in_taxid
  doc: depth  parent  rank  name
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktGetTaxInfo
