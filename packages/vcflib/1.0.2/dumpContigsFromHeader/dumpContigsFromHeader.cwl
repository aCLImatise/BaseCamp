class: CommandLineTool
id: dumpContigsFromHeader.cwl
inputs:
- id: in_output
  doc: scaffold4       1524
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- dumpContigsFromHeader
