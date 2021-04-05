class: CommandLineTool
id: gfatools_blacklist.cwl
inputs:
- id: in_min_region_length
  doc: min region length [100]
  type: long?
  inputBinding:
    prefix: -l
- id: in_include_regions_involving
  doc: include regions involving both strands (mostly inversions)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_in_dot_gfa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gfatools:0.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- gfatools
- blacklist
