class: CommandLineTool
id: hmmsim.cwl
inputs:
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a
  doc: ': obtain alignment length statistics too'
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: ': verbose: print scores'
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: ': length of random target seqs  [100]  (n>0)'
  type: string
  inputBinding:
    prefix: -L
- id: n
  doc: ': number of random target seqs  [1000]  (n>0)'
  type: string
  inputBinding:
    prefix: -N
- id: o
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: a_file
  doc: ': output alignment lengths to file <f>'
  type: string
  inputBinding:
    prefix: --afile
- id: e_file
  doc: ': output E vs. E plots to <f> in xy format'
  type: string
  inputBinding:
    prefix: --efile
- id: f_file
  doc: ': output filter fraction: # seqs passing P thresh'
  type: string
  inputBinding:
    prefix: --ffile
- id: pfile
  doc: ': output P(S>x) plots to <f> in xy format'
  type: string
  inputBinding:
    prefix: --pfile
- id: x_file
  doc: ': output bitscores as binary double vector to <f>'
  type: string
  inputBinding:
    prefix: --xfile
- id: fs
  doc: ': multihit local alignment  [default]'
  type: boolean
  inputBinding:
    prefix: --fs
- id: sw
  doc: ': unihit local alignment'
  type: boolean
  inputBinding:
    prefix: --sw
- id: ls
  doc: ': multihit glocal alignment'
  type: boolean
  inputBinding:
    prefix: --ls
- id: s
  doc: ': unihit glocal alignment'
  type: boolean
  inputBinding:
    prefix: --s
- id: v_it
  doc: ': score seqs with the Viterbi algorithm  [default]'
  type: boolean
  inputBinding:
    prefix: --vit
- id: fwd
  doc: ': score seqs with the Forward algorithm'
  type: boolean
  inputBinding:
    prefix: --fwd
- id: hyb
  doc: ': score seqs with the Hybrid algorithm'
  type: boolean
  inputBinding:
    prefix: --hyb
- id: msv
  doc: ': score seqs with the MSV algorithm'
  type: boolean
  inputBinding:
    prefix: --msv
- id: fast
  doc: ': use the optimized versions of the above'
  type: boolean
  inputBinding:
    prefix: --fast
- id: tm_in
  doc: ': set lower bound tail mass for fwd,island  [0.02]'
  type: string
  inputBinding:
    prefix: --tmin
- id: tmax
  doc: ': set lower bound tail mass for fwd,island  [0.02]'
  type: string
  inputBinding:
    prefix: --tmax
- id: t_points
  doc: ': set number of tail probs to try  [1]'
  type: string
  inputBinding:
    prefix: --tpoints
- id: t_linear
  doc: ': use linear not log spacing of tail probs'
  type: boolean
  inputBinding:
    prefix: --tlinear
- id: eml
  doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmL
- id: emn
  doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmN
- id: evl
  doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvL
- id: evn
  doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvN
- id: efl
  doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfL
- id: efn
  doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfN
- id: eft
  doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --Eft
- id: stall
  doc: ': arrest after start: for debugging MPI under gdb'
  type: boolean
  inputBinding:
    prefix: --stall
- id: seed
  doc: ': set random number seed to <n>  [0]'
  type: string
  inputBinding:
    prefix: --seed
- id: bg_flat
  doc: ': set uniform background frequencies'
  type: boolean
  inputBinding:
    prefix: --bgflat
- id: bg_comp
  doc: ": set bg frequencies to model's average composition"
  type: boolean
  inputBinding:
    prefix: --bgcomp
- id: x_no_length_model
  doc: ': turn the H3 length model off'
  type: boolean
  inputBinding:
    prefix: --x-no-lengthmodel
- id: nu
  doc: ': set nu parameter (# expected HSPs) for GMSV  [2.0]'
  type: string
  inputBinding:
    prefix: --nu
- id: p_thresh
  doc: ': set P-value threshold for --ffile  [0.02]'
  type: string
  inputBinding:
    prefix: --pthresh
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmsim
