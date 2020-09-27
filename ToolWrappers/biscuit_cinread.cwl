class: CommandLineTool
id: biscuit_cinread.cwl
inputs:
- id: in_region
  doc: region.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_target_c_ch
  doc: target (c, cg, ch, hcg, gch, hch) [cg]
  type: boolean
  inputBinding:
    prefix: -t
- id: in_content_print_cgrposcqpos
  doc: "content to print, \",\"-delimited:\nQNAME, QPAIR, STRAND, BSSTRAND, MAPQ\n\
    QBEG, QEND, CHRM, CRPOS, CGRPOS\nCQPOS, CRBASE, CCTXT, CQBASE, CRETENTION\n[QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_consider_secondary_mapping
  doc: consider secondary mapping.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_output
  doc: output.
  type: boolean
  inputBinding:
    prefix: -o
- id: in_cin_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biscuit
- cinread
