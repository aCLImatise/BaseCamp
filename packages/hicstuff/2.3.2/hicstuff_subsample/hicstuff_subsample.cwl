class: CommandLineTool
id: hicstuff_subsample.cwl
inputs:
- id: in_prop
  doc: "Proportion of contacts to sample from the input matrix\nif between 0 and 1.\
    \ Raw number of contacts to keep if\nsuperior to 1. [default: 0.1]"
  type: double?
  inputBinding:
    prefix: --prop
- id: in_force
  doc: Write even if the output file already exists.
  type: File?
  inputBinding:
    prefix: --force
- id: in_contact_map
  doc: Sparse contact matrix in graal, bg2 or cool format.
  type: string
  inputBinding:
    position: 0
- id: in_subsampled_prefix
  doc: "Path without extension to the output map in the same\nformat as the input\
    \ containing only a fraction of the\ncontacts."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Write even if the output file already exists.
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicstuff:2.3.2--py_0
cwlVersion: v1.1
baseCommand:
- hicstuff
- subsample
