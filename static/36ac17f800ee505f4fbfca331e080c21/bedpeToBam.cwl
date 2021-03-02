class: CommandLineTool
id: bedpeToBam.cwl
inputs:
- id: in_mapq
  doc: "Set the mappinq quality for the BAM records.\n(INT) Default: 255"
  type: boolean?
  inputBinding:
    prefix: -mapq
- id: in_ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean?
  inputBinding:
    prefix: -ubam
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedpeToBam
