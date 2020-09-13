class: CommandLineTool
id: ../../../ssu_esl_alimask.cwl
inputs:
- id: in_can_used_combination
  doc: ', which can be used in combination with each other.'
  type: string
  inputBinding:
    prefix: -p
- id: in_output_final_alignment
  doc: ': output the final alignment to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_quiet_print_info
  doc: ": be quiet; w/-o, don't print mask info to stdout"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_small
  doc: ': use minimal RAM (RAM usage will be independent of aln size)'
  type: boolean
  inputBinding:
    prefix: --small
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': specify that output aln be format <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: in_f_mask_rf
  doc: ': output final mask of non-gap RF len to file <f>'
  type: File
  inputBinding:
    prefix: --fmask-rf
- id: in_f_mask_all
  doc: ': output final mask of full aln len to file <f>'
  type: File
  inputBinding:
    prefix: --fmask-all
- id: in_amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_t_rf
  doc: ': <coords> string corresponds to non-gap RF positions'
  type: boolean
  inputBinding:
    prefix: --t-rf
- id: in_t_r_mins
  doc: ': remove all gap RF positions within <coords>'
  type: boolean
  inputBinding:
    prefix: --t-rmins
- id: in_gap_thresh
  doc: ': only keep columns with <= <x> fraction of gaps in them  [0.5]'
  type: double
  inputBinding:
    prefix: --gapthresh
- id: in_g_mask_rf
  doc: ': output gap-based 0/1 mask of non-gap RF len to file <f>'
  type: File
  inputBinding:
    prefix: --gmask-rf
- id: in_g_mask_all
  doc: ': output gap-based 0/1 mask of   full aln len to file <f>'
  type: File
  inputBinding:
    prefix: --gmask-all
- id: in_pfr_act
  doc: ': keep cols w/<x> fraction of seqs w/PP >= --pthresh  [0.95]'
  type: double
  inputBinding:
    prefix: --pfract
- id: in_p_thresh
  doc: ': set post prob threshold for --pfract as <x>  [0.95]'
  type: double
  inputBinding:
    prefix: --pthresh
- id: in_p_avg
  doc: ': keep cols with average post prob >= <x>'
  type: string
  inputBinding:
    prefix: --pavg
- id: in_pp_cons
  doc: ': keep cols with PP_cons value >= <x>'
  type: string
  inputBinding:
    prefix: --ppcons
- id: in_p_all_gap_ok
  doc: ": keep 100% gap columns (by default, they're removed w/-p)"
  type: boolean
  inputBinding:
    prefix: --pallgapok
- id: in_pm_ask_rf
  doc: ': output PP-based 0/1 mask of non-gap RF len to file <f>'
  type: File
  inputBinding:
    prefix: --pmask-rf
- id: in_pm_ask_all
  doc: ': output PP-based 0/1 mask of   full aln len to file <f>'
  type: File
  inputBinding:
    prefix: --pmask-all
- id: in_keep_ins
  doc: ': if msa has RF annotation, allow gap-RF columns to possibly survive'
  type: boolean
  inputBinding:
    prefix: --keepins
- id: in_rf_is_mask
  doc: ''
  type: File
  inputBinding:
    prefix: --rf-is-mask
- id: in_t
  doc: ''
  type: File
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_final_alignment
  doc: ': output the final alignment to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_final_alignment)
- id: out_f_mask_rf
  doc: ': output final mask of non-gap RF len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_f_mask_rf)
- id: out_f_mask_all
  doc: ': output final mask of full aln len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_f_mask_all)
- id: out_g_mask_rf
  doc: ': output gap-based 0/1 mask of non-gap RF len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_g_mask_rf)
- id: out_g_mask_all
  doc: ': output gap-based 0/1 mask of   full aln len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_g_mask_all)
- id: out_pm_ask_rf
  doc: ': output PP-based 0/1 mask of non-gap RF len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_pm_ask_rf)
- id: out_pm_ask_all
  doc: ': output PP-based 0/1 mask of   full aln len to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_pm_ask_all)
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimask
