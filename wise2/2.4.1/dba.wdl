version 1.0

task Dba {
  input {
    Boolean? match_a
    Boolean? match_b
    Boolean? match_c
    Boolean? match_d
    Boolean? gap_a
    Boolean? gap_aa
    Boolean? gap
    Boolean? block_open
    Boolean? u_match
    Boolean? single
    Boolean? no_match_n
    Boolean? align
    Boolean? anchor
    Boolean? pretty
    Boolean? pff
    Boolean? label
    Boolean? slim
    Boolean? big
    Boolean? params
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
    String seq_one
    String seq_two
  }
  command <<<
    dba \
      ~{seq_one} \
      ~{seq_two} \
      ~{true="-matchA" false="" match_a} \
      ~{true="-matchB" false="" match_b} \
      ~{true="-matchC" false="" match_c} \
      ~{true="-matchD" false="" match_d} \
      ~{true="-gapA" false="" gap_a} \
      ~{true="-gapAA" false="" gap_aa} \
      ~{true="-gap" false="" gap} \
      ~{true="-blockopen" false="" block_open} \
      ~{true="-umatch" false="" u_match} \
      ~{true="-single" false="" single} \
      ~{true="-nomatchn" false="" no_match_n} \
      ~{true="-align" false="" align} \
      ~{true="-anchor" false="" anchor} \
      ~{true="-pretty" false="" pretty} \
      ~{true="-pff" false="" pff} \
      ~{true="-label" false="" label} \
      ~{true="-slim" false="" slim} \
      ~{true="-big" false="" big} \
      ~{true="-params" false="" params} \
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
    match_a: "[0.65]     match level A"
    match_b: "[0.75]     match level B"
    match_c: "[0.85]     match level C"
    match_d: "[0.95]     match level D"
    gap_a: "[0.1]     (big only) Gap probability for A"
    gap_aa: "[0.1]     (big only) Gap probability for AA"
    gap: "[0.05]       gap probability"
    block_open: "[0.01] block open probability"
    u_match: "[0.99]    unmatched gap probability"
    single: "use only one match level, set with -matchA [0.8]"
    no_match_n: "do not match N to any base"
    align: "show alignment for computer parsing"
    anchor: "show anchored alignment to first sequence"
    pretty: "show alignment for ASCII viewing"
    pff: "show phylogenetic footprinting format output (gapped fasta)"
    label: "show label alignment"
    slim: "use slim DBA alignment"
    big: "use big DBA alignment with AA block"
    params: "print parameters"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    seq_one: ""
    seq_two: ""
  }
}