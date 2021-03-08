class: CommandLineTool
id: pmh_sankoff.cwl
inputs:
- id: in_color_map_file
  doc: Color map file
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_prefix
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: -o
- id: in_primary_anatomical_sites
  doc: "Primary anatomical sites separated by commas (if omitted, every\nanatomical\
    \ site will be considered iteratively as the primary)\n"
  type: string?
  inputBinding:
    prefix: -p
- id: in_leaf_labeling
  doc: Leaf labeling
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- pmh_sankoff
