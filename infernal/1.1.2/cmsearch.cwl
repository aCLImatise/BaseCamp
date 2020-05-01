#!/usr/bin/env cwl-runner

baseCommand:
- cmsearch
class: CommandLineTool
cwlVersion: v1.0
id: cmsearch
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_db
  inputBinding:
    position: 1
  type: string
- doc: ': configure CM for glocal alignment [default: local]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': set search space size in *Mb* to <x> for E-value calculations  (x>0)'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': show list of otherwise hidden developer/expert options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': save multiple alignment of all significant hits to file <s>'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: ': save parseable table of hits to file <s>'
  id: tbl_out
  inputBinding:
    prefix: --tblout
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
- doc: ': report extra information; mainly useful for debugging'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
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
- doc: ': consider sequences <= this E-value threshold as significant  [0.01]'
  id: ince
  inputBinding:
    prefix: --incE
  type: string
- doc: ': consider sequences >= this score threshold as significant'
  id: in_ct
  inputBinding:
    prefix: --incT
  type: string
- doc: ": use CM's GA gathering cutoffs as reporting thresholds"
  id: cut_ga
  inputBinding:
    prefix: --cut_ga
  type: boolean
- doc: ": use CM's NC noise cutoffs as reporting thresholds"
  id: cut_nc
  inputBinding:
    prefix: --cut_nc
  type: boolean
- doc: ": use CM's TC trusted cutoffs as reporting thresholds"
  id: cut_tc
  inputBinding:
    prefix: --cut_tc
  type: boolean
- doc: ': turn all heuristic filters off (slow)'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ': skip all HMM filter stages, use only CM (slow)'
  id: no_hmm
  inputBinding:
    prefix: --nohmm
  type: boolean
- doc: ': skip first two HMM filter stages (SSV & Vit)'
  id: mid
  inputBinding:
    prefix: --mid
  type: boolean
- doc: ': default: run search space size-dependent pipeline  [default]'
  id: default
  inputBinding:
    prefix: --default
  type: boolean
- doc: ': set heuristic filters at Rfam-level (fast)'
  id: rf_am
  inputBinding:
    prefix: --rfam
  type: boolean
- doc: ": use HMM only, don't use a CM at all"
  id: hmm_only
  inputBinding:
    prefix: --hmmonly
  type: boolean
- doc: ': set filters to defaults used for a search space of size <x> Mb'
  id: fz
  inputBinding:
    prefix: --FZ
  type: string
- doc: ': with --mid, set P-value threshold for HMM stages to <x>  [0.02]'
  id: fmid
  inputBinding:
    prefix: --Fmid
  type: string
- doc: ': do not allow truncated hits at sequence termini'
  id: not_run_c
  inputBinding:
    prefix: --notrunc
  type: boolean
- doc: ': allow full and truncated hits anywhere within sequences'
  id: any_trunc
  inputBinding:
    prefix: --anytrunc
  type: boolean
- doc: ': turn off the NULL3 post hoc additional null model'
  id: nonull3
  inputBinding:
    prefix: --nonull3
  type: boolean
- doc: ': set max allowed alnment mx size to <x> Mb [df: autodetermined]'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': set max allowed size of search DP matrices to <x> Mb  [128.]'
  id: smx_size
  inputBinding:
    prefix: --smxsize
  type: string
- doc: ': use scanning CM CYK algorithm, not Inside in final stage'
  id: cy_k
  inputBinding:
    prefix: --cyk
  type: boolean
- doc: ': align hits with CYK, not optimal accuracy'
  id: acy_k
  inputBinding:
    prefix: --acyk
  type: boolean
- doc: ': set W (expected max hit len) as <x> * cm->clen (model len)'
  id: wcx
  inputBinding:
    prefix: --wcx
  type: string
- doc: ': only search the top strand'
  id: top_only
  inputBinding:
    prefix: --toponly
  type: boolean
- doc: ': only search the bottom strand'
  id: bottom_only
  inputBinding:
    prefix: --bottomonly
  type: boolean
- doc: ': assert target <seqdb> is in format <s>: no autodetection'
  id: t_format
  inputBinding:
    prefix: --tformat
  type: string
- doc: ': number of parallel CPU workers to use for multithreads'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
