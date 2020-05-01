#!/usr/bin/env cwl-runner

baseCommand:
- jackhmmer
class: CommandLineTool
cwlVersion: v1.0
id: jackhmmer
inputs:
- doc: ''
  id: seq_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_db
  inputBinding:
    position: 1
  type: string
- doc: ': set maximum number of iterations to <n>  [5]  (n>0)'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': save multiple alignment of hits to file <f>'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: ': save parseable table of per-sequence hits to file <f>'
  id: tbl_out
  inputBinding:
    prefix: --tblout
  type: string
- doc: ': save parseable table of per-domain hits to file <f>'
  id: dom_tbl_out
  inputBinding:
    prefix: --domtblout
  type: string
- doc: ': save HMM checkpoints to files <f>-<iteration>.hmm'
  id: chk_hmm
  inputBinding:
    prefix: --chkhmm
  type: string
- doc: ': save alignment checkpoints to files <f>-<iteration>.sto'
  id: ch_kali
  inputBinding:
    prefix: --chkali
  type: string
- doc: ': prefer accessions over names in output'
  id: acc
  inputBinding:
    prefix: --acc
  type: boolean
- doc: ": don't output alignments, so output is smaller"
  id: no_ali
  inputBinding:
    prefix: --noali
  type: boolean
- doc: ': unlimit ASCII text output line width'
  id: no_text_w
  inputBinding:
    prefix: --notextw
  type: boolean
- doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  id: text_w
  inputBinding:
    prefix: --textw
  type: string
- doc: ': gap open probability'
  id: popen
  inputBinding:
    prefix: --popen
  type: string
- doc: ': gap extend probability'
  id: p_extend
  inputBinding:
    prefix: --pextend
  type: string
- doc: ': substitution score matrix choice (of some built-in matrices)'
  id: mx
  inputBinding:
    prefix: --mx
  type: string
- doc: ': read substitution score matrix from file <f>'
  id: mx_file
  inputBinding:
    prefix: --mxfile
  type: string
- doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': report sequences >= this score threshold in output'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': report domains <= this E-value threshold in output  [10.0]  (x>0)'
  id: dome
  inputBinding:
    prefix: --domE
  type: string
- doc: ': report domains >= this score cutoff in output'
  id: do_mt
  inputBinding:
    prefix: --domT
  type: string
- doc: ': consider sequences <= this E-value threshold as significant'
  id: ince
  inputBinding:
    prefix: --incE
  type: string
- doc: ': consider sequences >= this score threshold as significant'
  id: in_ct
  inputBinding:
    prefix: --incT
  type: string
- doc: ': consider domains <= this E-value threshold as significant'
  id: inc_dome
  inputBinding:
    prefix: --incdomE
  type: string
- doc: ': consider domains >= this score threshold as significant'
  id: inc_do_mt
  inputBinding:
    prefix: --incdomT
  type: string
- doc: ': Turn all heuristic filters off (less speed, more power)'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ': Stage 1 (MSV) threshold: promote hits w/ P <= F1  [0.02]'
  id: f1
  inputBinding:
    prefix: --F1
  type: string
- doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [1e-3]'
  id: f2
  inputBinding:
    prefix: --F2
  type: string
- doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [1e-5]'
  id: f3
  inputBinding:
    prefix: --F3
  type: string
- doc: ': turn off composition bias filter'
  id: no_bias
  inputBinding:
    prefix: --nobias
  type: boolean
- doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]  (0<=x<=1)'
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
- doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  id: wid
  inputBinding:
    prefix: --wid
  type: string
- doc: ': adjust eff seq # to achieve relative entropy target'
  id: e_ent
  inputBinding:
    prefix: --eent
  type: boolean
- doc: ': adjust eff seq # to reach rel. ent. target using exp scaling'
  id: e_ent_exp
  inputBinding:
    prefix: --eentexp
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
- doc: ': for --eent[exp]: set minimum rel entropy/position to <x>'
  id: ere
  inputBinding:
    prefix: --ere
  type: string
- doc: ': for --eent[exp]: set sigma param to <x>'
  id: e_sigma
  inputBinding:
    prefix: --esigma
  type: string
- doc: ': for --eclust: set fractional identity cutoff to <x>'
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
- doc: ': turn off biased composition score corrections'
  id: nonull2
  inputBinding:
    prefix: --nonull2
  type: boolean
- doc: ': set # of comparisons done, for E-value calculation'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': set # of significant seqs, for domain E-value calculation'
  id: do_mz
  inputBinding:
    prefix: --domZ
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': assert query <seqfile> is in format <s>: no autodetection'
  id: q_format
  inputBinding:
    prefix: --qformat
  type: string
- doc: ': assert target <seqdb> is in format <s>>: no autodetection'
  id: t_format
  inputBinding:
    prefix: --tformat
  type: string
- doc: ': number of parallel CPU workers to use for multithreads  [2]'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
