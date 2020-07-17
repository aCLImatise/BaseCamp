version 1.0

task Promoterwise {
  input {
    Boolean? align
    Boolean? query_start_restriction
    Boolean? query_end_position
    Boolean? target_start_restriction
    Boolean? target_end_position
    Boolean? lh_window
    Boolean? lh_seed
    Boolean? lha_ln
    Boolean? lh_score
    Boolean? lh_reject
    Boolean? lh_max
    Boolean? lr
    String? ben
    Boolean? motif_lib
    Boolean? mm_motif
    Boolean? mm_cons
    Boolean? mm_spacer
    Boolean? mm_motif_in_del
    Boolean? mm_cons_in_del
    Boolean? mm_spacer_in_del
    Boolean? mm_switch_motif
    Boolean? mm_switch_cons
    Boolean? tfm_type
    Boolean? tfm_cut_off
    Boolean? tfm_rel
    Boolean? tfm_rel_bits
    Boolean? hit_output
    Boolean? hit_help
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
  }
  command <<<
    promoterwise \
      ~{true="-align" false="" align} \
      ~{true="-s" false="" query_start_restriction} \
      ~{true="-t" false="" query_end_position} \
      ~{true="-u" false="" target_start_restriction} \
      ~{true="-v" false="" target_end_position} \
      ~{true="-lhwindow" false="" lh_window} \
      ~{true="-lhseed" false="" lh_seed} \
      ~{true="-lhaln" false="" lha_ln} \
      ~{true="-lhscore" false="" lh_score} \
      ~{true="-lhreject" false="" lh_reject} \
      ~{true="-lhmax" false="" lh_max} \
      ~{true="-lr" false="" lr} \
      ~{if defined(ben) then ("-ben " +  '"' + ben + '"') else ""} \
      ~{true="-motiflib" false="" motif_lib} \
      ~{true="-mm_motif" false="" mm_motif} \
      ~{true="-mm_cons" false="" mm_cons} \
      ~{true="-mm_spacer" false="" mm_spacer} \
      ~{true="-mm_motif_indel" false="" mm_motif_in_del} \
      ~{true="-mm_cons_indel" false="" mm_cons_in_del} \
      ~{true="-mm_spacer_indel" false="" mm_spacer_in_del} \
      ~{true="-mm_switch_motif" false="" mm_switch_motif} \
      ~{true="-mm_switch_cons" false="" mm_switch_cons} \
      ~{true="-tfm_type" false="" tfm_type} \
      ~{true="-tfm_cutoff" false="" tfm_cut_off} \
      ~{true="-tfm_rel" false="" tfm_rel} \
      ~{true="-tfm_relbits" false="" tfm_rel_bits} \
      ~{true="-hitoutput" false="" hit_output} \
      ~{true="-hithelp" false="" hit_help} \
      ~{true="-dydebug" false="" dy_debug} \
      ~{true="-paldebug" false="" pal_debug} \
      ~{true="-version" false="" version} \
      ~{true="-silent" false="" silent} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{true="-errorlog" false="" error_log} \
      ~{true="-errorstyle" false="" error_style}
  >>>
  parameter_meta {
    align: "[normal/motif] use normal DBA or motif alignment [normal]"
    query_start_restriction: "query start position restriction"
    query_end_position: "query end position restriction"
    target_start_restriction: "target start position restriction"
    target_end_position: "target end position restriction"
    lh_window: "- sequence window given to alignment [50]"
    lh_seed: "- seed score cutoff [10.0 bits]"
    lha_ln: "- aln  score cutoff [8.0 bits]"
    lh_score: "- sort final list by score (default by position)"
    lh_reject: "[none/query/both] - overlap rejection criteria in greedy assembly [query]"
    lh_max: "[20000] - maximum number of processed hits"
    lr: "motif library is in Laurence's format (default is Ewan's)"
    ben: "library is in Ben's IUPAC format (default is Ewan's)"
    motif_lib: "[filename] motif library file name"
    mm_motif: "[0.9]  Probability of a match in a motif"
    mm_cons: "[0.75] Probability of a match in a non-motif conserved"
    mm_spacer: "[0.35] Probability of a match in a spacer"
    mm_motif_in_del: "[0.00001] indel inside a motif"
    mm_cons_in_del: "[0.025]   indel inside a conserved region"
    mm_spacer_in_del: "[0.1]    indel inside a spacer"
    mm_switch_motif: "[0.05]    cost of switching to motif match"
    mm_switch_cons: "[0.000001]  cost of switching to conserved match"
    tfm_type: "[abs/rel/relmix] type of cutoff: absolute, relative, relative mixed"
    tfm_cut_off: "(abs) bits cutoff for absolute matches, default 11.0"
    tfm_rel: "[0.95] (rel/relmix) Relative to best possible score, accept if above irregardless of score"
    tfm_rel_bits: "[11.0] (relmix) If above relsoft and above this bits score, accept"
    hit_output: "[pseudoblast/xml/tab] pseudoblast by default"
    hit_help: "more detailed help on hitlist formats"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
  }
}