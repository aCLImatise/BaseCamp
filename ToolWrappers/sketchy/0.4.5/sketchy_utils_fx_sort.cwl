class: CommandLineTool
id: sketchy_utils_fx_sort.cwl
inputs:
- id: in_fast_x
  doc: Path to Fast{a,q} input file.  [required]
  type: File?
  inputBinding:
    prefix: --fastx
- id: in_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-sort
