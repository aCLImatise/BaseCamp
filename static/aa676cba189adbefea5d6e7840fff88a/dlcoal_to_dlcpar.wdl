version 1.0

task DlcoalToDlcpar {
  input {
    File? stree
    String? s_map
    File? input_ext
    File? output_ext
    Boolean? use_locus_recon
    Boolean? no_delay
    String coalescence
  }
  command <<<
    dlcoal_to_dlcpar \
      ~{coalescence} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""} \
      ~{if (use_locus_recon) then "--use-locus-recon" else ""} \
      ~{if (no_delay) then "--no-delay" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    input_ext: "input file extension (default: \\\".coal.tree\\\")"
    output_ext: "output file extension (default: \\\".dlcpar\\\")"
    use_locus_recon: "if set, use locus recon file rather than MPR"
    no_delay: "if set, disallow duplication between speciation and"
    coalescence: "Information:"
  }
  output {
    File out_stdout = stdout()
    File out_output_ext = "${in_output_ext}"
  }
}