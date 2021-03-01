class: CommandLineTool
id: pxtscale.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_scale
  doc: edge length scaling factor
  type: long?
  inputBinding:
    prefix: --scale
- id: in_root_height
  doc: height of root (tree must be ultrametric)
  type: string?
  inputBinding:
    prefix: --rootheight
- id: in_out_f
  doc: output file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxtscale
