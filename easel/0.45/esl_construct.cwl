class: CommandLineTool
id: esl_construct.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a
  doc: ': print info on all conflicting bps in individual structures'
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: x
  doc: ': set SS_cons as max set of non-conflicting bps from indi SSs'
  type: boolean
  inputBinding:
    prefix: -x
- id: r
  doc: ': remove SS_cons basepairs that conflicts with > 0 indi SS'
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: ': set SS_cons as indi SS with max bps consistent with SS_cons'
  type: boolean
  inputBinding:
    prefix: -c
- id: rfc
  doc: ': with -c, set RF annotation as seq SS_cons structure comes from'
  type: boolean
  inputBinding:
    prefix: --rfc
- id: indi
  doc: ': define SS_cons as individual SS for sequence <x>'
  type: string
  inputBinding:
    prefix: --indi
- id: r_find_i
  doc: ': with --indi <x>, define RF annotation as <x>'
  type: boolean
  inputBinding:
    prefix: --rfindi
- id: f_freq
  doc: ': aln cols i:j become SS_cons bps if paired in > <x> indi SS'
  type: string
  inputBinding:
    prefix: --ffreq
- id: fm_in
  doc: ': same as --ffreq but find min <x> that gives consistent SS_cons'
  type: boolean
  inputBinding:
    prefix: --fmin
- id: o
  doc: ': output a new alignment to file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: pfam
  doc: ': output alignment in Pfam (non-interleaved, 1 line/seq) format'
  type: boolean
  inputBinding:
    prefix: --pfam
- id: l
  doc: ': list seqs w/> 0 indi bp that conflicts w/a SS_cons bp to file <f>'
  type: string
  inputBinding:
    prefix: -l
- id: lmax
  doc: ': with -l, change maximum allowed conflicts of 0 to <x>  [0]  (n>=0)'
  type: string
  inputBinding:
    prefix: --lmax
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-construct
