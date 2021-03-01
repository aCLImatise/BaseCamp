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
    Int seq_one
    Int seq_two
  }
  command <<<
    dba \
      ~{seq_one} \
      ~{seq_two} \
      ~{if (match_a) then "-matchA" else ""} \
      ~{if (match_b) then "-matchB" else ""} \
      ~{if (match_c) then "-matchC" else ""} \
      ~{if (match_d) then "-matchD" else ""} \
      ~{if (gap_a) then "-gapA" else ""} \
      ~{if (gap_aa) then "-gapAA" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (block_open) then "-blockopen" else ""} \
      ~{if (u_match) then "-umatch" else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (no_match_n) then "-nomatchn" else ""} \
      ~{if (align) then "-align" else ""} \
      ~{if (anchor) then "-anchor" else ""} \
      ~{if (pretty) then "-pretty" else ""} \
      ~{if (pff) then "-pff" else ""} \
      ~{if (label) then "-label" else ""} \
      ~{if (slim) then "-slim" else ""} \
      ~{if (big) then "-big" else ""} \
      ~{if (params) then "-params" else ""} \
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
  runtime {
    docker: "None"
  }
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
    pff: "show phylogenetic footprinting format output\\n(gapped fasta)"
    label: "show label alignment"
    slim: "use slim DBA alignment"
    big: "use big DBA alignment with AA block"
    params: "print parameters"
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
    seq_one: ""
    seq_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}