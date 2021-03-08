class: CommandLineTool
id: fmlrc2_convert.cwl
inputs:
- id: in_input
  doc: 'The raw BWT (default: stdin)'
  type: string?
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- fmlrc2-convert
