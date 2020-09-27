class: CommandLineTool
id: liftUp.cwl
inputs:
- id: in_no_head
  doc: No header written for .psl files
  type: boolean
  inputBinding:
    prefix: -nohead
- id: in_dots
  doc: Output a dot every N lines processed
  type: string
  inputBinding:
    prefix: -dots
- id: in_psl_q
  doc: Lift query (rather than target) side of psl
  type: boolean
  inputBinding:
    prefix: -pslQ
- id: in_axt_q
  doc: Lift query (rather than target) side of axt
  type: boolean
  inputBinding:
    prefix: -axtQ
- id: in_chain_q
  doc: Lift query (rather than target) side of chain
  type: boolean
  inputBinding:
    prefix: -chainQ
- id: in_net_q
  doc: Lift query (rather than target) side of net
  type: boolean
  inputBinding:
    prefix: -netQ
- id: in_waba_q
  doc: "Lift query (rather than target) side of waba alignment\n(waba lifts only work\
    \ with query side at this time)"
  type: boolean
  inputBinding:
    prefix: -wabaQ
- id: in_no_sort
  doc: "'t sort bed, gff, or gdup files, to save memory"
  type: string
  inputBinding:
    prefix: -nosort
- id: in_gap_size
  doc: contig gapsize from default
  type: string
  inputBinding:
    prefix: -gapsize
- id: in_ignore_versions
  doc: '- Ignore NCBI-style version number in sequence ids of input files'
  type: boolean
  inputBinding:
    prefix: -ignoreVersions
- id: in_ext_gene_pred
  doc: extended genePred
  type: string
  inputBinding:
    prefix: -extGenePred
- id: in_drop
  doc: '- Items not in liftSpec are silently dropped from dest'
  type: string
  inputBinding:
    position: 0
- id: in_warn
  doc: '- Items not in liftSpec are dropped.  A warning is issued'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- liftUp
