#!/usr/bin/env cwl-runner

baseCommand:
- esl-construct
class: CommandLineTool
cwlVersion: v1.0
id: esl-construct
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ': print info on all conflicting bps in individual structures'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': set SS_cons as max set of non-conflicting bps from indi SSs'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: ': remove SS_cons basepairs that conflicts with > 0 indi SS'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': set SS_cons as indi SS with max bps consistent with SS_cons'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': with -c, set RF annotation as seq SS_cons structure comes from'
  id: rfc
  inputBinding:
    prefix: --rfc
  type: boolean
- doc: ': define SS_cons as individual SS for sequence <x>'
  id: indi
  inputBinding:
    prefix: --indi
  type: string
- doc: ': with --indi <x>, define RF annotation as <x>'
  id: r_find_i
  inputBinding:
    prefix: --rfindi
  type: boolean
- doc: ': aln cols i:j become SS_cons bps if paired in > <x> indi SS'
  id: f_freq
  inputBinding:
    prefix: --ffreq
  type: string
- doc: ': same as --ffreq but find min <x> that gives consistent SS_cons'
  id: fm_in
  inputBinding:
    prefix: --fmin
  type: boolean
- doc: ': output a new alignment to file <f>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output alignment in Pfam (non-interleaved, 1 line/seq) format'
  id: pfam
  inputBinding:
    prefix: --pfam
  type: boolean
- doc: ': list seqs w/> 0 indi bp that conflicts w/a SS_cons bp to file <f>'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: ': with -l, change maximum allowed conflicts of 0 to <x>  [0]  (n>=0)'
  id: lmax
  inputBinding:
    prefix: --lmax
  type: string
