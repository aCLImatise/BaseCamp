class: CommandLineTool
id: phylorank_bl_optimal.cwl
inputs:
- id: in_min_dist
  doc: "minimum mean branch length value to evaluate (default:\n0.5)"
  type: long?
  inputBinding:
    prefix: --min_dist
- id: in_max_dist
  doc: "maximum mean branch length value to evaluate (default:\n1.2)"
  type: long?
  inputBinding:
    prefix: --max_dist
- id: in_step_size
  doc: "step size of mean branch length values (default:\n0.025)\n"
  type: long?
  inputBinding:
    prefix: --step_size
- id: in_input_tree
  doc: input tree to calculate branch length distributions
  type: string
  inputBinding:
    position: 0
- id: in_output_table
  doc: desired named of output table
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.10--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- bl_optimal
