class: CommandLineTool
id: uvaia_search_u.cwl
inputs:
- id: in_n_best
  doc: number of best reference sequences per query to show (default=4)
  type: long?
  inputBinding:
    prefix: --nbest
- id: in_reference
  doc: reference sequences
  type: string?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/uvaia:1.0.0--hbcae180_0
cwlVersion: v1.1
baseCommand:
- uvaia_search_u
