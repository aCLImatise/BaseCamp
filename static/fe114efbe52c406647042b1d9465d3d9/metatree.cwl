class: CommandLineTool
id: metatree.cwl
inputs:
- id: in_batch_file
  doc: "First tree must be the reference tree, format:\nid<tab>path_to_tree"
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: path to the output directory
  type: string
  inputBinding:
    position: 1
- id: in_taxonomy_file
  doc: 'path to taxonomy file, format: gid<tab>taxonomy'
  type: string
  inputBinding:
    position: 2
- id: in_out_group
  doc: outgroup for rooting
  type: string
  inputBinding:
    position: 3
- id: in_cpus
  doc: number of CPUs to use
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metatree:0.0.1--py_0
cwlVersion: v1.1
baseCommand:
- metatree
