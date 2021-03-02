class: CommandLineTool
id: poppunk_extract_distances.py.cwl
inputs:
- id: in_distances
  doc: "Prefix of input pickle and numpy file of pre-\ncalculated distances (required)"
  type: File?
  inputBinding:
    prefix: --distances
- id: in_tree
  doc: Newick file containing phylogeny of isolates
  type: File?
  inputBinding:
    prefix: --tree
- id: in_name_output_file
  doc: Name of output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_extract_tabseparated_file
  doc: Extract tab-separated file of distances from pkl and npy files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk_extract_distances.py
