class: CommandLineTool
id: promoterwise.cwl
inputs:
- id: in_align
  doc: '[normal/motif] use normal DBA or motif alignment [normal]'
  type: boolean
  inputBinding:
    prefix: -align
- id: in_query_start_restriction
  doc: query start position restriction
  type: boolean
  inputBinding:
    prefix: -s
- id: in_query_end_position
  doc: query end position restriction
  type: boolean
  inputBinding:
    prefix: -t
- id: in_target_start_position
  doc: target start position restriction
  type: boolean
  inputBinding:
    prefix: -u
- id: in_target_end_position
  doc: target end position restriction
  type: boolean
  inputBinding:
    prefix: -v
- id: in_lh_window
  doc: '- sequence window given to alignment [50]'
  type: boolean
  inputBinding:
    prefix: -lhwindow
- id: in_lh_seed
  doc: '- seed score cutoff [10.0 bits]'
  type: boolean
  inputBinding:
    prefix: -lhseed
- id: in_lha_ln
  doc: '- aln  score cutoff [8.0 bits]'
  type: boolean
  inputBinding:
    prefix: -lhaln
- id: in_lh_score
  doc: '- sort final list by score (default by position)'
  type: boolean
  inputBinding:
    prefix: -lhscore
- id: in_lh_reject
  doc: '[none/query/both] - overlap rejection criteria in greedy assembly [query]'
  type: boolean
  inputBinding:
    prefix: -lhreject
- id: in_lh_max
  doc: '[20000] - maximum number of processed hits'
  type: boolean
  inputBinding:
    prefix: -lhmax
- id: in_lr
  doc: motif library is in Laurence's format (default is Ewan's)
  type: boolean
  inputBinding:
    prefix: -lr
- id: in_ben
  doc: library is in Ben's IUPAC format (default is Ewan's)
  type: string
  inputBinding:
    prefix: -ben
- id: in_motif_lib
  doc: '[filename] motif library file name'
  type: boolean
  inputBinding:
    prefix: -motiflib
- id: in_mm_motif
  doc: '[0.9]  Probability of a match in a motif'
  type: boolean
  inputBinding:
    prefix: -mm_motif
- id: in_mm_cons
  doc: '[0.75] Probability of a match in a non-motif conserved'
  type: boolean
  inputBinding:
    prefix: -mm_cons
- id: in_mm_spacer
  doc: '[0.35] Probability of a match in a spacer'
  type: boolean
  inputBinding:
    prefix: -mm_spacer
- id: in_mm_motif_in_del
  doc: '[0.00001] indel inside a motif'
  type: boolean
  inputBinding:
    prefix: -mm_motif_indel
- id: in_mm_cons_in_del
  doc: '[0.025]   indel inside a conserved region'
  type: boolean
  inputBinding:
    prefix: -mm_cons_indel
- id: in_mm_spacer_in_del
  doc: '[0.1]    indel inside a spacer'
  type: boolean
  inputBinding:
    prefix: -mm_spacer_indel
- id: in_mm_switch_motif
  doc: '[0.05]    cost of switching to motif match'
  type: boolean
  inputBinding:
    prefix: -mm_switch_motif
- id: in_mm_switch_cons
  doc: '[0.000001]  cost of switching to conserved match'
  type: boolean
  inputBinding:
    prefix: -mm_switch_cons
- id: in_tfb_pseudo
  doc: simple pseudo count, default 0.3
  type: boolean
  inputBinding:
    prefix: -tfb_pseudo
- id: in_tfm_type
  doc: '[abs/rel/relmix] type of cutoff: absolute, relative, relative mixed'
  type: boolean
  inputBinding:
    prefix: -tfm_type
- id: in_tfm_cut_off
  doc: (abs) bits cutoff for absolute matches, default 11.0
  type: boolean
  inputBinding:
    prefix: -tfm_cutoff
- id: in_tfm_rel
  doc: '[0.95] (rel/relmix) Relative to best possible score, accept if above irregardless
    of score'
  type: boolean
  inputBinding:
    prefix: -tfm_rel
- id: in_tfm_rel_bits
  doc: '[11.0] (relmix) If above relsoft and above this bits score, accept'
  type: boolean
  inputBinding:
    prefix: -tfm_relbits
- id: in_hit_output
  doc: '[pseudoblast/xml/tab] pseudoblast by default'
  type: boolean
  inputBinding:
    prefix: -hitoutput
- id: in_hit_help
  doc: more detailed help on hitlist formats
  type: boolean
  inputBinding:
    prefix: -hithelp
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean
  inputBinding:
    prefix: -dymem
- id: in_kbyte
  doc: memory amount to use [4000]
  type: boolean
  inputBinding:
    prefix: -kbyte
- id: in_dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: in_pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: in_version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: in_error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- promoterwise
