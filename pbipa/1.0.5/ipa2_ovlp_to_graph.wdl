version 1.0

task Ipa2OvlpToGraph {
  input {
    File? overlap_file
    Boolean? lfc
    Boolean? disable_chime_r_bridge_removal
    String? ctg_prefix
    Boolean? haplo_spur
    Int? depth_cut_off
    Int? width_cut_off
    Int? length_cut_off
  }
  command <<<
    ipa2_ovlp_to_graph \
      ~{if defined(overlap_file) then ("--overlap-file " +  '"' + overlap_file + '"') else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (disable_chime_r_bridge_removal) then "--disable-chimer-bridge-removal" else ""} \
      ~{if defined(ctg_prefix) then ("--ctg-prefix " +  '"' + ctg_prefix + '"') else ""} \
      ~{if (haplo_spur) then "--haplospur" else ""} \
      ~{if defined(depth_cut_off) then ("--depth-cutoff " +  '"' + depth_cut_off + '"') else ""} \
      ~{if defined(width_cut_off) then ("--width-cutoff " +  '"' + width_cut_off + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length-cutoff " +  '"' + length_cut_off + '"') else ""}
  >>>
  parameter_meta {
    overlap_file: "a file that contains the overlap information. (default: preads.m4)"
    lfc: "use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)"
    disable_chime_r_bridge_removal: "disable chimer induced bridge removal (default: False)"
    ctg_prefix: "Prefix for contig names. (default: )"
    haplo_spur: "Apply the haplospur contig extraction algorithm. (default: False)"
    depth_cut_off: "Depth cutoff threshold (number of nodes) for bundle finding. (default: 48)"
    width_cut_off: "Width cutoff threshold (number of nodes) for bundle finding. (default: 16)"
    length_cut_off: "Depth cutoff threshold (number of nodes) for bundle finding. (default: 500000)"
  }
  output {
    File out_stdout = stdout()
  }
}