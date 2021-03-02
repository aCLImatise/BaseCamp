class: CommandLineTool
id: break_contigs.cwl
inputs:
- id: in_alignment
  doc: bed file for alignment (string)
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_breakpoints
  doc: breakpoints (string)
  type: boolean?
  inputBinding:
    prefix: --breakpoints
- id: in_min_size
  doc: Minimum mate pair separation for error findng (int)
  type: boolean?
  inputBinding:
    prefix: --min_size
- id: in_conti_glen
  doc: length of contigs (string)
  type: boolean?
  inputBinding:
    prefix: --contiglen
- id: in_iteration
  doc: Iteration number (int)
  type: boolean?
  inputBinding:
    prefix: --iteration
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/salsa2:2.2--py27h78a066a_0
cwlVersion: v1.1
baseCommand:
- break_contigs
