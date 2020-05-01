#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmalign
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmalign
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sequence_file
  inputBinding:
    position: 1
  type: string
- doc: ': output the alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': align locally w.r.t. the model'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': quiet; suppress banner and scores, print only the alignment'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': meta-cm mode: <cmfile> is a meta-cm built from aln in <f>'
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: ': output alnment in interleaved Stockholm format (not 1 line/seq)'
  id: i_leaved
  inputBinding:
    prefix: --ileaved
  type: boolean
- doc: ': do not append posterior probabilities to alignment'
  id: no_prob
  inputBinding:
    prefix: --no-prob
  type: boolean
- doc: ': specify the input file is in format <x>, not FASTA'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': num seqs for each temp alnment, for saving memory  [1000]'
  id: chunk
  inputBinding:
    prefix: --chunk
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': align with the Holmes/Durbin optimal accuracy algorithm'
  id: opt_acc
  inputBinding:
    prefix: --optacc
  type: boolean
- doc: ': align with the CYK algorithm'
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
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  id: viterbi
  inputBinding:
    prefix: --viterbi
  type: boolean
- doc: ': build sub CM for columns b/t HMM predicted start/end points'
  id: sub
  inputBinding:
    prefix: --sub
  type: boolean
- doc: ': use divide and conquer (d&c) alignment algorithm'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  id: h_banded
  inputBinding:
    prefix: --hbanded
  type: boolean
- doc: ': do not use bands to accelerate aln algorithm'
  id: non_banded
  inputBinding:
    prefix: --nonbanded
  type: boolean
- doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  id: tau
  inputBinding:
    prefix: --tau
  type: string
- doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]  (x>0.)'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': output alignment as RNA sequence data'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': output alignment as DNA (not RNA) sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': include only match columns in output alignment'
  id: match_only
  inputBinding:
    prefix: --matchonly
  type: boolean
- doc: ': incl. alignment in <f> (must be aln <cm file> was built from)'
  id: with_ali
  inputBinding:
    prefix: --withali
  type: string
- doc: ': incl. structure (w/pknots) from <f> from --withali <f>'
  id: with_p_knots
  inputBinding:
    prefix: --withpknots
  type: boolean
- doc: ': --rf was originally used with cmbuild'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: ': --gapthresh <x> was originally used with cmbuild  [0.5]'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': only align seqs with CM number <n>    in the CM file  (n>0)'
  id: cm_idx
  inputBinding:
    prefix: --cm-idx
  type: string
- doc: ': only align seqs with the CM named <s> in the CM file'
  id: cm_name
  inputBinding:
    prefix: --cm-name
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
- doc: ': dump alignment score information to file <f>'
  id: s_file
  inputBinding:
    prefix: --sfile
  type: string
