#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmscore
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmscore
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ': generate <n> sequences  [10]'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': align locally w.r.t. the model'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': print individual timings & scores, not just a summary'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': build sub CM for columns b/t HMM predicted start/end points'
  id: sub
  inputBinding:
    prefix: --sub
  type: boolean
- doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': emit <n> sequences from each CM  [default]'
  id: emit
  inputBinding:
    prefix: --emit
  type: boolean
- doc: ': emit <n> random seq from cm->null model'
  id: random
  inputBinding:
    prefix: --random
  type: boolean
- doc: ': read sequences to align from file <s>'
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: ': save seqs to file <s> in FASTA format'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: ': with --random, specify minimum length of random sequences as <n>'
  id: lm_in
  inputBinding:
    prefix: --Lmin
  type: string
- doc: ': with --random, specify maximum length of random sequences as <n>'
  id: lmax
  inputBinding:
    prefix: --Lmax
  type: string
- doc: ': with --emit, pad (W-L) residues on each side of emitted seqs'
  id: pad
  inputBinding:
    prefix: --pad
  type: boolean
- doc: ': compare d&c optimal CYK versus HMM banded CYK  [default]'
  id: h_banded
  inputBinding:
    prefix: --hbanded
  type: boolean
- doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  id: tau
  inputBinding:
    prefix: --tau
  type: string
- doc: ': w/--hbanded derive HMM bands w/o scanning Forward/Backward'
  id: aln2_bands
  inputBinding:
    prefix: --aln2bands
  type: boolean
- doc: ': realign (non-banded) seqs with HMM banded CYK score < 0 bits'
  id: h_safe
  inputBinding:
    prefix: --hsafe
  type: boolean
- doc: ': compare divide and conquer (d&c) versus standard non-banded CYK'
  id: non_banded
  inputBinding:
    prefix: --nonbanded
  type: boolean
- doc: ': with --nonbanded, do only score, save memory'
  id: score_only
  inputBinding:
    prefix: --scoreonly
  type: boolean
- doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  id: viterbi
  inputBinding:
    prefix: --viterbi
  type: boolean
- doc: ': run algorithms in scanning search mode'
  id: search
  inputBinding:
    prefix: --search
  type: boolean
- doc: ': with --search, use Inside instead of CYK'
  id: inside
  inputBinding:
    prefix: --inside
  type: boolean
- doc: ': with --search, use HMM  Forward instead of CYK'
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: ': set initial (stage 2) tail loss prob to 1E-<x> for HMM banding'
  id: taus
  inputBinding:
    prefix: --taus
  type: string
- doc: ': set final   (stage N) tail loss prob to 1E-<x> for HMM banding'
  id: tau_e
  inputBinding:
    prefix: --taue
  type: string
- doc: ': dump parsetrees to file <f>'
  id: t_file
  inputBinding:
    prefix: --tfile
  type: string
