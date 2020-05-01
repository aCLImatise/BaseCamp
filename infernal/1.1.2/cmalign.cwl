#!/usr/bin/env cwl-runner

baseCommand:
- cmalign
class: CommandLineTool
cwlVersion: v1.0
id: cmalign
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_file
  inputBinding:
    position: 1
  type: string
- doc: ': output the alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': configure CM for global alignment [default: local]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': use the Holmes/Durbin optimal accuracy algorithm  [default]'
  id: opt_acc
  inputBinding:
    prefix: --optacc
  type: boolean
- doc: ': use the CYK algorithm'
  id: cy_k
  inputBinding:
    prefix: --cyk
  type: boolean
- doc: ': sample alignment of each seq from posterior distribution'
  id: sample
  inputBinding:
    prefix: --sample
  type: boolean
- doc: ': w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': do not use truncated alignment algorithm'
  id: not_run_c
  inputBinding:
    prefix: --notrunc
  type: boolean
- doc: ': build sub CM for columns b/t HMM predicted start/end points'
  id: sub
  inputBinding:
    prefix: --sub
  type: boolean
- doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  id: h_banded
  inputBinding:
    prefix: --hbanded
  type: boolean
- doc: ': set tail loss prob for HMM bands to <x>  [1e-7]  (1e-18<x<1)'
  id: tau
  inputBinding:
    prefix: --tau
  type: string
- doc: ': set maximum allowable DP matrix size to <x> Mb  [1028.0]  (x>0.)'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': do not adjust tau (tighten bands) until mx size is < limit'
  id: fixed_tau
  inputBinding:
    prefix: --fixedtau
  type: boolean
- doc: ': set max tau <x> when tightening HMM bands  [0.05]  (0<x<0.5)'
  id: max_tau
  inputBinding:
    prefix: --maxtau
  type: string
- doc: ': do not use HMM bands for faster alignment'
  id: non_banded
  inputBinding:
    prefix: --nonbanded
  type: boolean
- doc: ': use small memory divide and conquer (d&c) algorithm'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': dump alignment score information to file <f>'
  id: s_file
  inputBinding:
    prefix: --sfile
  type: string
- doc: ': dump individual sequence parsetrees to file <f>'
  id: t_file
  inputBinding:
    prefix: --tfile
  type: string
- doc: ': dump information on per-sequence inserts to file <f>'
  id: i_file
  inputBinding:
    prefix: --ifile
  type: string
- doc: ': dump information on per-sequence EL inserts to file <f>'
  id: el_file
  inputBinding:
    prefix: --elfile
  type: string
- doc: ': include alignment in file <f> (same ali that CM came from)'
  id: map_ali
  inputBinding:
    prefix: --mapali
  type: string
- doc: ': include structure (w/pknots) from <f> from --mapali <f>'
  id: map_str
  inputBinding:
    prefix: --mapstr
  type: boolean
- doc: ': cmbuild --noss option was used w/aln from --mapali <f>'
  id: noss
  inputBinding:
    prefix: --noss
  type: boolean
- doc: ': assert <seqfile> is in format <s>: no autodetection'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': output alignment in format <s>  [Stockholm]'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': output alignment as DNA (not RNA) sequence data'
  id: dna_out
  inputBinding:
    prefix: --dnaout
  type: boolean
- doc: ': do not include posterior probabilities in the alignment'
  id: no_prob
  inputBinding:
    prefix: --noprob
  type: boolean
- doc: ': include only match columns in output alignment'
  id: match_only
  inputBinding:
    prefix: --matchonly
  type: boolean
- doc: ': force output in interleaved Stockholm format'
  id: i_leaved
  inputBinding:
    prefix: --ileaved
  type: boolean
- doc: ': save regression test data to file <f>'
  id: regress
  inputBinding:
    prefix: --regress
  type: string
- doc: ': report extra information; mainly useful for debugging'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: ': number of parallel CPU workers to use for multithreads  (n>=0)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
