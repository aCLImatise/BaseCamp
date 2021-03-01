version 1.0

task DlcparToDlcoal {
  input {
    File? stree
    String? s_map
    File? input_ext
    File? output_ext
    String dlc_par_to_dl_coal
    String is
    String a
    String utility
    String for
    String converting
    String dlc_par
    String reconciliations
    String to
    String dl_coal
  }
  command <<<
    dlcpar_to_dlcoal \
      ~{dlc_par_to_dl_coal} \
      ~{is} \
      ~{a} \
      ~{utility} \
      ~{for} \
      ~{converting} \
      ~{dlc_par} \
      ~{reconciliations} \
      ~{to} \
      ~{dl_coal} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    input_ext: "input file extension (default: \\\".tree\\\")"
    output_ext: "output file extension (default: \\\"\\\")"
    dlc_par_to_dl_coal: ""
    is: ""
    a: ""
    utility: ""
    for: ""
    converting: ""
    dlc_par: ""
    reconciliations: ""
    to: ""
    dl_coal: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_ext = "${in_output_ext}"
  }
}