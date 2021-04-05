class: CommandLineTool
id: poppunk_extract_distances.py.cwl
inputs:
- id: in_distances
  doc: "Prefix of input pickle (and optionally, numpy file) of\npre-calculated distances\
    \ (required)"
  type: File?
  inputBinding:
    prefix: --distances
- id: in_sparse
  doc: Sparse distance matrix file name
  type: File?
  inputBinding:
    prefix: --sparse
- id: in_tree
  doc: Newick file containing phylogeny of isolates
  type: File?
  inputBinding:
    prefix: --tree
- id: in_output
  doc: Name of output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_extract_distances
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_extract_distances.py
