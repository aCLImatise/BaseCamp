#!/usr/bin/env cwl-runner

baseCommand:
- hmmbuild
class: CommandLineTool
cwlVersion: v1.0
id: hmmbuild
inputs:
- doc: ''
  id: hmm_file_out
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: msa_file
  inputBinding:
    position: 1
  type: string
- doc: ': name the HMM <s>'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': direct summary output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': resave annotated, possibly modified MSA to file <f>'
  id: o
  inputBinding:
    prefix: -O
  type: string
- doc: ': input alignment is protein sequence data'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': input alignment is DNA sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': input alignment is RNA sequence data'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: ': manual construction (requires reference annotation)'
  id: hand
  inputBinding:
    prefix: --hand
  type: boolean
- doc: ': sets sym fraction controlling --fast construction  [0.5]'
  id: sym_frac
  inputBinding:
    prefix: --symfrac
  type: string
- doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  id: frag_thresh
  inputBinding:
    prefix: --fragthresh
  type: string
- doc: ': Henikoff position-based weights  [default]'
  id: wpb
  inputBinding:
    prefix: --wpb
  type: boolean
- doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  id: wgs_c
  inputBinding:
    prefix: --wgsc
  type: boolean
- doc: ': Henikoff simple filter weights'
  id: w_blosum
  inputBinding:
    prefix: --wblosum
  type: boolean
- doc: ": don't do any relative weighting; set all to 1"
  id: w_none
  inputBinding:
    prefix: --wnone
  type: boolean
- doc: ': use weights as given in MSA file'
  id: w_given
  inputBinding:
    prefix: --wgiven
  type: boolean
- doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  id: wid
  inputBinding:
    prefix: --wid
  type: string
- doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  id: e_ent
  inputBinding:
    prefix: --eent
  type: boolean
- doc: ': eff seq # is # of single linkage clusters'
  id: ec_lust
  inputBinding:
    prefix: --eclust
  type: boolean
- doc: ': no effective seq # weighting: just use nseq'
  id: en_one
  inputBinding:
    prefix: --enone
  type: boolean
- doc: ': set eff seq # for all models to <x>'
  id: e_set
  inputBinding:
    prefix: --eset
  type: string
- doc: ': for --eent: set minimum rel entropy/position to <x>'
  id: ere
  inputBinding:
    prefix: --ere
  type: string
- doc: ': for --eent: set sigma param to <x>  [45.0]'
  id: e_sigma
  inputBinding:
    prefix: --esigma
  type: string
- doc: ': for --eclust: set fractional identity cutoff to <x>  [0.62]'
  id: eid
  inputBinding:
    prefix: --eid
  type: string
- doc: ": don't use any prior; parameters are frequencies"
  id: p_none
  inputBinding:
    prefix: --pnone
  type: boolean
- doc: ': use a Laplace +1 prior'
  id: pla_place
  inputBinding:
    prefix: --plaplace
  type: boolean
- doc: ': use substitution score matrix for single-sequence inputs'
  id: single_mx
  inputBinding:
    prefix: --singlemx
  type: boolean
- doc: ': substitution score matrix (built-in matrices, with --singlemx)'
  id: mx
  inputBinding:
    prefix: --mx
  type: string
- doc: ': read substitution score matrix from file <f> (with --singlemx)'
  id: mx_file
  inputBinding:
    prefix: --mxfile
  type: string
- doc: ': force gap open prob. (w/ --singlemx, aa default 0.02, nt 0.031)'
  id: popen
  inputBinding:
    prefix: --popen
  type: string
- doc: ': force gap extend prob. (w/ --singlemx, aa default 0.4, nt 0.75)'
  id: p_extend
  inputBinding:
    prefix: --pextend
  type: string
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
- doc: ': number of parallel CPU workers for multithreads  [2]'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: ': arrest after start: for attaching debugger to process'
  id: stall
  inputBinding:
    prefix: --stall
  type: boolean
- doc: ': assert input alifile is in format <s> (no autodetect)'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': tail mass at which window length is determined'
  id: w_beta
  inputBinding:
    prefix: --w_beta
  type: string
- doc: ': window length '
  id: w_length
  inputBinding:
    prefix: --w_length
  type: string
- doc: ': pretend all inserts are length <= <n>'
  id: max_insert_len
  inputBinding:
    prefix: --maxinsertlen
  type: string
