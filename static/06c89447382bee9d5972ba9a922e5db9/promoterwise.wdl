version 1.0

task Promoterwise {
  input {
    Boolean? align
    Boolean? query_start_restriction
    Boolean? query_end_position
    Boolean? target_start_position
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
    Boolean? tfb_pseudo
    Boolean? tfm_type
    Boolean? tfm_cut_off
    Boolean? tfm_rel
    Boolean? tfm_rel_bits
    Boolean? hit_output
    Boolean? hit_help
    Boolean? dy_mem
    Boolean? kbyte
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
      ~{if (align) then "-align" else ""} \
      ~{if (query_start_restriction) then "-s" else ""} \
      ~{if (query_end_position) then "-t" else ""} \
      ~{if (target_start_position) then "-u" else ""} \
      ~{if (target_end_position) then "-v" else ""} \
      ~{if (lh_window) then "-lhwindow" else ""} \
      ~{if (lh_seed) then "-lhseed" else ""} \
      ~{if (lha_ln) then "-lhaln" else ""} \
      ~{if (lh_score) then "-lhscore" else ""} \
      ~{if (lh_reject) then "-lhreject" else ""} \
      ~{if (lh_max) then "-lhmax" else ""} \
      ~{if (lr) then "-lr" else ""} \
      ~{if defined(ben) then ("-ben " +  '"' + ben + '"') else ""} \
      ~{if (motif_lib) then "-motiflib" else ""} \
      ~{if (mm_motif) then "-mm_motif" else ""} \
      ~{if (mm_cons) then "-mm_cons" else ""} \
      ~{if (mm_spacer) then "-mm_spacer" else ""} \
      ~{if (mm_motif_in_del) then "-mm_motif_indel" else ""} \
      ~{if (mm_cons_in_del) then "-mm_cons_indel" else ""} \
      ~{if (mm_spacer_in_del) then "-mm_spacer_indel" else ""} \
      ~{if (mm_switch_motif) then "-mm_switch_motif" else ""} \
      ~{if (mm_switch_cons) then "-mm_switch_cons" else ""} \
      ~{if (tfb_pseudo) then "-tfb_pseudo" else ""} \
      ~{if (tfm_type) then "-tfm_type" else ""} \
      ~{if (tfm_cut_off) then "-tfm_cutoff" else ""} \
      ~{if (tfm_rel) then "-tfm_rel" else ""} \
      ~{if (tfm_rel_bits) then "-tfm_relbits" else ""} \
      ~{if (hit_output) then "-hitoutput" else ""} \
      ~{if (hit_help) then "-hithelp" else ""} \
      ~{if (dy_mem) then "-dymem" else ""} \
      ~{if (kbyte) then "-kbyte" else ""} \
      ~{if (dy_debug) then "-dydebug" else ""} \
      ~{if (pal_debug) then "-paldebug" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""} \
      ~{if (error_style) then "-errorstyle" else ""}
  >>>
  parameter_meta {
    align: "[normal/motif] use normal DBA or motif alignment [normal]"
    query_start_restriction: "query start position restriction"
    query_end_position: "query end position restriction"
    target_start_position: "target start position restriction"
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
    tfb_pseudo: "simple pseudo count, default 0.3"
    tfm_type: "[abs/rel/relmix] type of cutoff: absolute, relative, relative mixed"
    tfm_cut_off: "(abs) bits cutoff for absolute matches, default 11.0"
    tfm_rel: "[0.95] (rel/relmix) Relative to best possible score, accept if above irregardless of score"
    tfm_rel_bits: "[11.0] (relmix) If above relsoft and above this bits score, accept"
    hit_output: "[pseudoblast/xml/tab] pseudoblast by default"
    hit_help: "more detailed help on hitlist formats"
    dy_mem: "memory style [default/linear/explicit]"
    kbyte: "memory amount to use [4000]"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
  }
  output {
    File out_stdout = stdout()
  }
}