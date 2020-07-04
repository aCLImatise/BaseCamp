class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biscuit_cinread.cwl
inputs:
- id: region
  doc: region.
  type: boolean
  inputBinding:
    prefix: -g
- id: target_c_cg
  doc: target (c, cg, ch, hcg, gch, hch) [cg]
  type: boolean
  inputBinding:
    prefix: -t
- id: content_print_delimited
  doc: 'content to print, ","-delimited: QNAME, QPAIR, STRAND, BSSTRAND, MAPQ QBEG,
    QEND, CHRM, CRPOS, CGRPOS CQPOS, CRBASE, CCTXT, CQBASE, CRETENTION [QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]'
  type: boolean
  inputBinding:
    prefix: -p
- id: consider_secondary_mapping
  doc: consider secondary mapping.
  type: boolean
  inputBinding:
    prefix: -s
- id: output
  doc: output.
  type: boolean
  inputBinding:
    prefix: -o
- id: cin_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- cinread
