class: CommandLineTool
id: maf_sort.cwl
inputs:
- id: in_only_print_duplicate
  doc: only print duplicate alignments
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_sort_nth_sequence
  doc: 'sort by the n-th sequence (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_my_alignments_dot_maf
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
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- maf-sort
