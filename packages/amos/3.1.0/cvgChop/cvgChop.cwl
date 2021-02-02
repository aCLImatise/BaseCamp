class: CommandLineTool
id: cvgChop.cwl
inputs:
- id: in_sum
  doc: '- summarize the coverages'
  type: boolean
  inputBinding:
    prefix: -sum
- id: in_map
  doc: '- build map of coverage areas'
  type: boolean
  inputBinding:
    prefix: -map
- id: in_cvg
  doc: "- create multi-fasta file of regions\nin genome with > <min_cvg> coverage.\
    \ (Default: 2)"
  type: long
  inputBinding:
    prefix: -cvg
- id: in_by_scf
  doc: "- the contigs are reported in the order and orientation implied by\nthe scaffolds.\
    \  Option requires -a."
  type: boolean
  inputBinding:
    prefix: -byscf
- id: in_split
  doc: '- splits the contigs into chunks that have > 0 coverage over all length'
  type: boolean
  inputBinding:
    prefix: -split
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cvgChop
