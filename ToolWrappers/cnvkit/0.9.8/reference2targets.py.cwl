class: CommandLineTool
id: reference2targets.py.cwl
inputs:
- id: in_output
  doc: "Output base name (extensions added automatically).\n"
  type: string?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: Reference file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- reference2targets.py
