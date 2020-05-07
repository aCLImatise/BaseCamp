class: CommandLineTool
id: esl_alimask.cwl
inputs:
- id: o
  doc: ': output the final alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ": be quiet; w/-o, don't print mask info to stdout"
  type: boolean
  inputBinding:
    prefix: -q
- id: small
  doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  type: boolean
  inputBinding:
    prefix: --small
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': specify that output aln be format <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: f_mask_rf
  doc: ': output final mask of non-gap RF len to file <f>'
  type: string
  inputBinding:
    prefix: --fmask-rf
- id: f_mask_all
  doc: ': output final mask of full aln len to file <f>'
  type: string
  inputBinding:
    prefix: --fmask-all
- id: amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: t_rf
  doc: ': <coords> string corresponds to non-gap RF positions'
  type: boolean
  inputBinding:
    prefix: --t-rf
- id: t_r_mins
  doc: ': remove all gap RF positions within <coords>'
  type: boolean
  inputBinding:
    prefix: --t-rmins
- id: gap_thresh
  doc: ': only keep columns with <= <x> fraction of gaps in them  [0.5]'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: g_mask_rf
  doc: ': output gap-based 0/1 mask of non-gap RF len to file <f>'
  type: string
  inputBinding:
    prefix: --gmask-rf
- id: g_mask_all
  doc: ': output gap-based 0/1 mask of   full aln len to file <f>'
  type: string
  inputBinding:
    prefix: --gmask-all
- id: pfr_act
  doc: ': keep cols w/<x> fraction of seqs w/PP >= --pthresh  [0.95]'
  type: string
  inputBinding:
    prefix: --pfract
- id: p_thresh
  doc: ': set post prob threshold for --pfract as <x>  [0.95]'
  type: string
  inputBinding:
    prefix: --pthresh
- id: p_avg
  doc: ': keep cols with average post prob >= <x>'
  type: string
  inputBinding:
    prefix: --pavg
- id: pp_cons
  doc: ': keep cols with PP_cons value >= <x>'
  type: string
  inputBinding:
    prefix: --ppcons
- id: p_all_gap_ok
  doc: ": keep 100% gap columns (by default, they're removed w/-p)"
  type: boolean
  inputBinding:
    prefix: --pallgapok
- id: pm_ask_rf
  doc: ': output PP-based 0/1 mask of non-gap RF len to file <f>'
  type: string
  inputBinding:
    prefix: --pmask-rf
- id: pm_ask_all
  doc: ': output PP-based 0/1 mask of   full aln len to file <f>'
  type: string
  inputBinding:
    prefix: --pmask-all
- id: keep_ins
  doc: ': if msa has RF annotation, allow gap-RF columns to possibly survive'
  type: boolean
  inputBinding:
    prefix: --keepins
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimask
