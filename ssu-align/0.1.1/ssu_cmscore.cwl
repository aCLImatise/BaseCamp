class: CommandLineTool
id: ssu_cmscore.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ': generate <n> sequences  [10]'
  type: string
  inputBinding:
    prefix: -n
- id: l
  doc: ': align locally w.r.t. the model'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]'
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: ': print individual timings & scores, not just a summary'
  type: boolean
  inputBinding:
    prefix: -a
- id: sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean
  inputBinding:
    prefix: --sub
- id: mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]'
  type: string
  inputBinding:
    prefix: --mxsize
- id: devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: emit
  doc: ': emit <n> sequences from each CM  [default]'
  type: boolean
  inputBinding:
    prefix: --emit
- id: random
  doc: ': emit <n> random seq from cm->null model'
  type: boolean
  inputBinding:
    prefix: --random
- id: in_file
  doc: ': read sequences to align from file <s>'
  type: string
  inputBinding:
    prefix: --infile
- id: outfile
  doc: ': save seqs to file <s> in FASTA format'
  type: string
  inputBinding:
    prefix: --outfile
- id: lm_in
  doc: ': with --random, specify minimum length of random sequences as <n>'
  type: string
  inputBinding:
    prefix: --Lmin
- id: lmax
  doc: ': with --random, specify maximum length of random sequences as <n>'
  type: string
  inputBinding:
    prefix: --Lmax
- id: pad
  doc: ': with --emit, pad (W-L) residues on each side of emitted seqs'
  type: boolean
  inputBinding:
    prefix: --pad
- id: h_banded
  doc: ': compare d&c optimal CYK versus HMM banded CYK  [default]'
  type: boolean
  inputBinding:
    prefix: --hbanded
- id: tau
  doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --tau
- id: aln2_bands
  doc: ': w/--hbanded derive HMM bands w/o scanning Forward/Backward'
  type: boolean
  inputBinding:
    prefix: --aln2bands
- id: h_safe
  doc: ': realign (non-banded) seqs with HMM banded CYK score < 0 bits'
  type: boolean
  inputBinding:
    prefix: --hsafe
- id: non_banded
  doc: ': compare divide and conquer (d&c) versus standard non-banded CYK'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: score_only
  doc: ': with --nonbanded, do only score, save memory'
  type: boolean
  inputBinding:
    prefix: --scoreonly
- id: viterbi
  doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  type: boolean
  inputBinding:
    prefix: --viterbi
- id: search
  doc: ': run algorithms in scanning search mode'
  type: boolean
  inputBinding:
    prefix: --search
- id: inside
  doc: ': with --search, use Inside instead of CYK'
  type: boolean
  inputBinding:
    prefix: --inside
- id: forward
  doc: ': with --search, use HMM  Forward instead of CYK'
  type: boolean
  inputBinding:
    prefix: --forward
- id: taus
  doc: ': set initial (stage 2) tail loss prob to 1E-<x> for HMM banding'
  type: string
  inputBinding:
    prefix: --taus
- id: tau_e
  doc: ': set final   (stage N) tail loss prob to 1E-<x> for HMM banding'
  type: string
  inputBinding:
    prefix: --taue
- id: t_file
  doc: ': dump parsetrees to file <f>'
  type: string
  inputBinding:
    prefix: --tfile
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmscore
