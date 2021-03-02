class: CommandLineTool
id: coverm_contig.cwl
inputs:
- id: in_coupled
  doc: ''
  type: string?
  inputBinding:
    prefix: --coupled
- id: in_contig_end_exclusion
  doc: ''
  type: string?
  inputBinding:
    prefix: --contig-end-exclusion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coverm:0.6.0--hc216eb9_0
cwlVersion: v1.1
baseCommand:
- coverm
- contig
