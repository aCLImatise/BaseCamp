version 1.0

task FcOvlpToGraph {
  input {
    File? overlap_file
    Boolean? lfc
    Boolean? disable_chime_r_bridge_removal
    String? ctg_prefix
  }
  command <<<
    fc_ovlp_to_graph \
      ~{if defined(overlap_file) then ("--overlap-file " +  '"' + overlap_file + '"') else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (disable_chime_r_bridge_removal) then "--disable-chimer-bridge-removal" else ""} \
      ~{if defined(ctg_prefix) then ("--ctg-prefix " +  '"' + ctg_prefix + '"') else ""}
  >>>
  parameter_meta {
    overlap_file: "a file that contains the overlap information. (default: preads.m4)"
    lfc: "use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)"
    disable_chime_r_bridge_removal: "disable chimer induced bridge removal (default: False)"
    ctg_prefix: "Prefix for contig names. (default: )"
  }
  output {
    File out_stdout = stdout()
  }
}