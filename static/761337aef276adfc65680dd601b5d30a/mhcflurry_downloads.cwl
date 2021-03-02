class: CommandLineTool
id: mhcflurry_downloads.cwl
inputs:
- id: in_quiet
  doc: Output less
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Output more
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- mhcflurry-downloads
