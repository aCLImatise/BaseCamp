#!/usr/bin/env cwl-runner

baseCommand:
- hmmsim
class: CommandLineTool
cwlVersion: v1.0
id: hmmsim
inputs:
- doc: ''
  id: hmm_file
  inputBinding:
    position: 0
  type: string
- doc: ': obtain alignment length statistics too'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': verbose: print scores'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': length of random target seqs  [100]  (n>0)'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ': number of random target seqs  [1000]  (n>0)'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output alignment lengths to file <f>'
  id: a_file
  inputBinding:
    prefix: --afile
  type: string
- doc: ': output E vs. E plots to <f> in xy format'
  id: e_file
  inputBinding:
    prefix: --efile
  type: string
- doc: ': output filter fraction: # seqs passing P thresh'
  id: f_file
  inputBinding:
    prefix: --ffile
  type: string
- doc: ': output P(S>x) plots to <f> in xy format'
  id: pfile
  inputBinding:
    prefix: --pfile
  type: string
- doc: ': output bitscores as binary double vector to <f>'
  id: x_file
  inputBinding:
    prefix: --xfile
  type: string
- doc: ': multihit local alignment  [default]'
  id: fs
  inputBinding:
    prefix: --fs
  type: boolean
- doc: ': unihit local alignment'
  id: sw
  inputBinding:
    prefix: --sw
  type: boolean
- doc: ': multihit glocal alignment'
  id: ls
  inputBinding:
    prefix: --ls
  type: boolean
- doc: ': unihit glocal alignment'
  id: s
  inputBinding:
    prefix: --s
  type: boolean
- doc: ': score seqs with the Viterbi algorithm  [default]'
  id: v_it
  inputBinding:
    prefix: --vit
  type: boolean
- doc: ': score seqs with the Forward algorithm'
  id: fwd
  inputBinding:
    prefix: --fwd
  type: boolean
- doc: ': score seqs with the Hybrid algorithm'
  id: hyb
  inputBinding:
    prefix: --hyb
  type: boolean
- doc: ': score seqs with the MSV algorithm'
  id: msv
  inputBinding:
    prefix: --msv
  type: boolean
- doc: ': use the optimized versions of the above'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: ': set lower bound tail mass for fwd,island  [0.02]'
  id: tm_in
  inputBinding:
    prefix: --tmin
  type: string
- doc: ': set lower bound tail mass for fwd,island  [0.02]'
  id: tmax
  inputBinding:
    prefix: --tmax
  type: string
- doc: ': set number of tail probs to try  [1]'
  id: t_points
  inputBinding:
    prefix: --tpoints
  type: string
- doc: ': use linear not log spacing of tail probs'
  id: t_linear
  inputBinding:
    prefix: --tlinear
  type: boolean
- doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  id: eml
  inputBinding:
    prefix: --EmL
  type: string
- doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  id: emn
  inputBinding:
    prefix: --EmN
  type: string
- doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  id: evl
  inputBinding:
    prefix: --EvL
  type: string
- doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  id: evn
  inputBinding:
    prefix: --EvN
  type: string
- doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  id: efl
  inputBinding:
    prefix: --EfL
  type: string
- doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  id: efn
  inputBinding:
    prefix: --EfN
  type: string
- doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  id: eft
  inputBinding:
    prefix: --Eft
  type: string
- doc: ': arrest after start: for debugging MPI under gdb'
  id: stall
  inputBinding:
    prefix: --stall
  type: boolean
- doc: ': set random number seed to <n>  [0]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': set uniform background frequencies'
  id: bg_flat
  inputBinding:
    prefix: --bgflat
  type: boolean
- doc: ": set bg frequencies to model's average composition"
  id: bg_comp
  inputBinding:
    prefix: --bgcomp
  type: boolean
- doc: ': turn the H3 length model off'
  id: x_no_length_model
  inputBinding:
    prefix: --x-no-lengthmodel
  type: boolean
- doc: ': set nu parameter (# expected HSPs) for GMSV  [2.0]'
  id: nu
  inputBinding:
    prefix: --nu
  type: string
- doc: ': set P-value threshold for --ffile  [0.02]'
  id: p_thresh
  inputBinding:
    prefix: --pthresh
  type: string
