#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-alimask
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-alimask
inputs:
- doc: ': output the final alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ": be quiet; w/-o, don't print mask info to stdout"
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': specify that output aln be format <s>'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': output final mask of non-gap RF len to file <f>'
  id: f_mask_rf
  inputBinding:
    prefix: --fmask-rf
  type: string
- doc: ': output final mask of full aln len to file <f>'
  id: f_mask_all
  inputBinding:
    prefix: --fmask-all
  type: string
- doc: ': <msafile> contains protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': <msafile> contains DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': <msafile> contains RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': <coords> string corresponds to non-gap RF positions'
  id: t_rf
  inputBinding:
    prefix: --t-rf
  type: boolean
- doc: ': remove all gap RF positions within <coords>'
  id: t_r_mins
  inputBinding:
    prefix: --t-rmins
  type: boolean
- doc: ': only keep columns with <= <x> fraction of gaps in them  [0.5]'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': output gap-based 0/1 mask of non-gap RF len to file <f>'
  id: g_mask_rf
  inputBinding:
    prefix: --gmask-rf
  type: string
- doc: ': output gap-based 0/1 mask of   full aln len to file <f>'
  id: g_mask_all
  inputBinding:
    prefix: --gmask-all
  type: string
- doc: ': keep cols w/<x> fraction of seqs w/PP >= --pthresh  [0.95]'
  id: pfr_act
  inputBinding:
    prefix: --pfract
  type: string
- doc: ': set post prob threshold for --pfract as <x>  [0.95]'
  id: p_thresh
  inputBinding:
    prefix: --pthresh
  type: string
- doc: ': keep cols with average post prob >= <x>'
  id: p_avg
  inputBinding:
    prefix: --pavg
  type: string
- doc: ': keep cols with PP_cons value >= <x>'
  id: pp_cons
  inputBinding:
    prefix: --ppcons
  type: string
- doc: ": keep 100% gap columns (by default, they're removed w/-p)"
  id: p_all_gap_ok
  inputBinding:
    prefix: --pallgapok
  type: boolean
- doc: ': output PP-based 0/1 mask of non-gap RF len to file <f>'
  id: pm_ask_rf
  inputBinding:
    prefix: --pmask-rf
  type: string
- doc: ': output PP-based 0/1 mask of   full aln len to file <f>'
  id: pm_ask_all
  inputBinding:
    prefix: --pmask-all
  type: string
- doc: ': if msa has RF annotation, allow gap-RF columns to possibly survive'
  id: keep_ins
  inputBinding:
    prefix: --keepins
  type: boolean
