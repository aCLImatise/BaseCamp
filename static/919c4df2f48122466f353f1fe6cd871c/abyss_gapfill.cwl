class: CommandLineTool
id: abyss_gapfill.cwl
inputs:
- id: in_min_align
  doc: the minimal alignment size [1]
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-gapfill
