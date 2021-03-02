class: CommandLineTool
id: funannotate_sort.cwl
inputs:
- id: in_input
  doc: Multi-fasta genome file. (Required)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_out
  doc: Sorted by size and relabeled output file. (Required)
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_base
  doc: 'Base name to relabel contigs. Default: scaffold'
  type: boolean?
  inputBinding:
    prefix: --base
- id: in_min_len
  doc: 'Shorter contigs are discarded. Default: 0'
  type: boolean?
  inputBinding:
    prefix: --minlen
- id: in_arguments
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
  dockerPull: quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- funannotate
- sort
