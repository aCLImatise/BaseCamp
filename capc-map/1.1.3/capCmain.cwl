class: CommandLineTool
id: capCmain.cwl
inputs:
- id: r
  doc: frag_file   is a bed file of restriction enzyme fragments genome wide
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: targ_file   is a bed file of capture targets
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: sam_file    is a SAM file containing groups of aligned digested fragments,
    sorted by name
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: name        is the first part of the output file name
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: exclusion zone; reporter fragments mapping within N bp of a target fragment
    are discarder. Default N=500.
  type: string
  inputBinding:
    prefix: -e
- id: i
  doc: save interchromosomal. If present, interchomosomal interactions will be saved
    as well as counted.
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- capCmain
