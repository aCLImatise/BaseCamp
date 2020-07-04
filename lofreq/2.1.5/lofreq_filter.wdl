version 1.0

task LofreqFilter {
  input {
    Boolean? sb_no_compound
    Boolean? sb_incl_indels
    Boolean? only_indels
    Boolean? only_sn_vs
    Boolean? print_all
    Boolean? no_defaults
    Boolean? verbose
    Boolean? debug
    String? i
    String? o
  }
  command <<<
    lofreq filter \
      ~{true="--sb-no-compound" false="" sb_no_compound} \
      ~{true="--sb-incl-indels" false="" sb_incl_indels} \
      ~{true="--only-indels" false="" only_indels} \
      ~{true="--only-snvs" false="" only_sn_vs} \
      ~{true="--print-all" false="" print_all} \
      ~{true="--no-defaults" false="" no_defaults} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    sb_no_compound: "Don't use compound filter"
    sb_incl_indels: "Apply SB filter to indels as well"
    only_indels: "Keep InDels only"
    only_sn_vs: "Keep SNVs only"
    print_all: "Print all, not just passed variants"
    no_defaults: "Remove all default filter settings"
    verbose: "Be verbose"
    debug: "Enable debugging"
    i: ""
    o: ""
  }
}