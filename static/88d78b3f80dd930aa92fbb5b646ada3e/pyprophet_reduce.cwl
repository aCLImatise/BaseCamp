class: CommandLineTool
id: pyprophet_reduce.cwl
inputs:
- id: in_in
  doc: Scored PyProphet input file.  [required]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Reduced OSWR output file.
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Reduced OSWR output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- pyprophet
- reduce
