class: CommandLineTool
id: msi_res2taxatable.cwl
inputs:
- id: in_input
  doc: TSV file name
  type: File?
  inputBinding:
    prefix: --input
- id: in_out
  doc: output file prefix
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi_res2taxatable
