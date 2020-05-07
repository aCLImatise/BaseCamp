class: CommandLineTool
id: findErrors.cwl
inputs:
- id: s
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: o
  doc: output-name        write corrections to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: error-rate         expected error rate in alignments
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: 'min-overlap        '
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: 'num-threads        '
  type: boolean
  inputBinding:
    prefix: -t
- id: d
  doc: degree-threshold   set keep flag if fewer than this many overlaps
  type: boolean
  inputBinding:
    prefix: -d
- id: k
  doc: kmer-size          minimum exact-match region to prevent change
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: don't use the haplo_ct
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: vote-len           number of exact match bases around an error to vote to change
  type: boolean
  inputBinding:
    prefix: -V
- id: x
  doc: end-exclude-len    length of end of exact match to exclude in preventing change
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- findErrors
