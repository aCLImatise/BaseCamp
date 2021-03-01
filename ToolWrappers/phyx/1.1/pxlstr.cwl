class: CommandLineTool
id: pxlstr.cwl
inputs:
- id: in_tree_f
  doc: input tree file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --treef
- id: in_rooted
  doc: return whether the tree is rooted
  type: boolean?
  inputBinding:
    prefix: --rooted
- id: in_age
  doc: return the height of root (must be rooted and ultrametric)
  type: boolean?
  inputBinding:
    prefix: --age
- id: in_n_tips
  doc: return the number of terminals
  type: boolean?
  inputBinding:
    prefix: --ntips
- id: in_ultrametric
  doc: return whether tree is ultrametric
  type: boolean?
  inputBinding:
    prefix: --ultrametric
- id: in_binary
  doc: return whether tree is binary
  type: boolean?
  inputBinding:
    prefix: --binary
- id: in_length
  doc: return the length of the tree
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_tip_labels
  doc: return all tip labels (one per line)
  type: boolean?
  inputBinding:
    prefix: --tiplabels
- id: in_rt_var
  doc: return root-to-tip variance
  type: boolean?
  inputBinding:
    prefix: --rtvar
- id: in_out_f
  doc: output tree stats file, STOUT otherwise
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
  doc: output tree stats file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxlstr
