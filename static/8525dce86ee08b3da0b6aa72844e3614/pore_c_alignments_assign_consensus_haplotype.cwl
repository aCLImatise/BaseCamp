class: CommandLineTool
id: pore_c_alignments_assign_consensus_haplotype.cwl
inputs:
- id: in_threshold
  doc: "major:minor haplotype fraction must be greater than this\nvalue to assign\
    \ a consensus  [default: 0.8]"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_output_pore_c_table
  doc: Calculate a per-read consensus haplotype for each phase_set in ALIGN_TABLE
  type: string
  inputBinding:
    position: 0
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
- assign-consensus-haplotype
