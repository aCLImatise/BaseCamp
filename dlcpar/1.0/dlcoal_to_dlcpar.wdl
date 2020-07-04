version 1.0

task DlcoalToDlcpar {
  input {
    String? stree
    String? s_map
    String? input_ext
    String? output_ext
    Boolean? use_locus_recon
    Boolean? no_delay
    String dl_coal_to_dlc_par
    String is
    String a
    String utility
    String for
    String converting
    String dl_coal
    String reconciliations
    String to
    String dlc_par
  }
  command <<<
    dlcoal_to_dlcpar \
      ~{dl_coal_to_dlc_par} \
      ~{is} \
      ~{a} \
      ~{utility} \
      ~{for} \
      ~{converting} \
      ~{dl_coal} \
      ~{reconciliations} \
      ~{to} \
      ~{dlc_par} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""} \
      ~{true="--use-locus-recon" false="" use_locus_recon} \
      ~{true="--no-delay" false="" no_delay}
  >>>
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    input_ext: "input file extension (default: \".coal.tree\")"
    output_ext: "output file extension (default: \".dlcpar\")"
    use_locus_recon: "if set, use locus recon file rather than MPR"
    no_delay: "if set, disallow duplication between speciation and coalescence"
    dl_coal_to_dlc_par: ""
    is: ""
    a: ""
    utility: ""
    for: ""
    converting: ""
    dl_coal: ""
    reconciliations: ""
    to: ""
    dlc_par: ""
  }
}