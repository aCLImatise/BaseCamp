class: CommandLineTool
id: pxcolt.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_limit
  doc: minimum support threshold as proportion (default = 0.5)
  type: double?
  inputBinding:
    prefix: --limit
- id: in_sup
  doc: string identifying support values (if default fails)
  type: string?
  inputBinding:
    prefix: --sup
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
- pxcolt
