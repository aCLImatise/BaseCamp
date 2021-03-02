class: CommandLineTool
id: pore_c_alignments_create_table.cwl
inputs:
- id: in_alignment_haplotypes
  doc: The alignment to haplotype mapping from
  type: File?
  inputBinding:
    prefix: --alignment-haplotypes
- id: in_analysis
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_what_shap
  doc: --help                       Show this message and exit.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- alignments
- create-table
