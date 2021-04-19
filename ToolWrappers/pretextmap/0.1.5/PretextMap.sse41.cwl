class: CommandLineTool
id: PretextMap.sse41.cwl
inputs:
- id: in_sort_order
  doc: ({descend}, ascend)
  type: boolean?
  inputBinding:
    prefix: --sortorder
- id: in_filter_include
  doc: '"seq_ [, seq_]*"'
  type: string?
  inputBinding:
    prefix: --filterInclude
- id: in_filter_exclude
  doc: '"seq_ [, seq_]*")'
  type: boolean?
  inputBinding:
    prefix: --filterExclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pretextmap:0.1.5--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- PretextMap.sse41
