class: CommandLineTool
id: MS_make_ref.cwl
inputs:
- id: in_tree_file_newick
  doc: tree file (newick format)
  type: File?
  inputBinding:
    prefix: -i
- id: in_taxonomy_annotation_file
  doc: taxonomy annotation file (tabular format)
  type: File?
  inputBinding:
    prefix: -r
- id: in_reference_name_default
  doc: reference name, default is "tree.dms"
  type: string?
  inputBinding:
    prefix: -o
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dms:1.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- MS-make-ref
