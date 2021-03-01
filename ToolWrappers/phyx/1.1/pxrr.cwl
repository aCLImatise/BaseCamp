class: CommandLineTool
id: pxrr.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_out_groups
  doc: outgroup sep by commas (NO SPACES!)
  type: string?
  inputBinding:
    prefix: --outgroups
- id: in_ranked
  doc: turn on ordering of outgroups. will root on first one present
  type: boolean?
  inputBinding:
    prefix: --ranked
- id: in_un_root
  doc: unroot the tree
  type: boolean?
  inputBinding:
    prefix: --unroot
- id: in_out_f
  doc: output tree file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_silent
  doc: do not error if outgroup(s) not found
  type: boolean?
  inputBinding:
    prefix: --silent
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
  doc: output tree file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxrr
