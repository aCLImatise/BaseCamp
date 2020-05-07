class: CommandLineTool
id: promoterwise.cwl
inputs:
- id: align
  doc: '[normal/motif] use normal DBA or motif alignment [normal]'
  type: boolean
  inputBinding:
    prefix: -align
- id: s
  doc: query start position restriction
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: query end position restriction
  type: boolean
  inputBinding:
    prefix: -t
- id: u
  doc: target start position restriction
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: target end position restriction
  type: boolean
  inputBinding:
    prefix: -v
- id: lh_window
  doc: '- sequence window given to alignment [50]'
  type: boolean
  inputBinding:
    prefix: -lhwindow
- id: lh_seed
  doc: '- seed score cutoff [10.0 bits]'
  type: boolean
  inputBinding:
    prefix: -lhseed
- id: lha_ln
  doc: '- aln  score cutoff [8.0 bits]'
  type: boolean
  inputBinding:
    prefix: -lhaln
- id: lh_score
  doc: '- sort final list by score (default by position)'
  type: boolean
  inputBinding:
    prefix: -lhscore
- id: lh_reject
  doc: '[none/query/both] - overlap rejection criteria in greedy assembly [query]'
  type: boolean
  inputBinding:
    prefix: -lhreject
- id: lh_max
  doc: '[20000] - maximum number of processed hits'
  type: boolean
  inputBinding:
    prefix: -lhmax
- id: lr
  doc: motif library is in Laurence's format (default is Ewan's)
  type: boolean
  inputBinding:
    prefix: -lr
- id: ben
  doc: library is in Ben's IUPAC format (default is Ewan's)
  type: string
  inputBinding:
    prefix: -ben
- id: motif_lib
  doc: '[filename] motif library file name'
  type: boolean
  inputBinding:
    prefix: -motiflib
- id: mm_motif
  doc: '[0.9]  Probability of a match in a motif'
  type: boolean
  inputBinding:
    prefix: -mm_motif
- id: mm_cons
  doc: '[0.75] Probability of a match in a non-motif conserved'
  type: boolean
  inputBinding:
    prefix: -mm_cons
- id: mm_spacer
  doc: '[0.35] Probability of a match in a spacer'
  type: boolean
  inputBinding:
    prefix: -mm_spacer
- id: mm_motif_in_del
  doc: '[0.00001] indel inside a motif'
  type: boolean
  inputBinding:
    prefix: -mm_motif_indel
- id: mm_cons_in_del
  doc: '[0.025]   indel inside a conserved region'
  type: boolean
  inputBinding:
    prefix: -mm_cons_indel
- id: mm_spacer_in_del
  doc: '[0.1]    indel inside a spacer'
  type: boolean
  inputBinding:
    prefix: -mm_spacer_indel
- id: mm_switch_motif
  doc: '[0.05]    cost of switching to motif match'
  type: boolean
  inputBinding:
    prefix: -mm_switch_motif
- id: mm_switch_cons
  doc: '[0.000001]  cost of switching to conserved match'
  type: boolean
  inputBinding:
    prefix: -mm_switch_cons
- id: tfm_type
  doc: '[abs/rel/relmix] type of cutoff: absolute, relative, relative mixed'
  type: boolean
  inputBinding:
    prefix: -tfm_type
- id: tfm_cut_off
  doc: (abs) bits cutoff for absolute matches, default 11.0
  type: boolean
  inputBinding:
    prefix: -tfm_cutoff
- id: tfm_rel
  doc: '[0.95] (rel/relmix) Relative to best possible score, accept if above irregardless
    of score'
  type: boolean
  inputBinding:
    prefix: -tfm_rel
- id: tfm_rel_bits
  doc: '[11.0] (relmix) If above relsoft and above this bits score, accept'
  type: boolean
  inputBinding:
    prefix: -tfm_relbits
- id: hit_output
  doc: '[pseudoblast/xml/tab] pseudoblast by default'
  type: boolean
  inputBinding:
    prefix: -hitoutput
- id: hit_help
  doc: more detailed help on hitlist formats
  type: boolean
  inputBinding:
    prefix: -hithelp
- id: dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
outputs: []
cwlVersion: v1.1
baseCommand:
- promoterwise
