version 1.0

task PblayoutM4tog {
  input {
    Boolean? disable_chime_r_bridge_removal
    Boolean? lfc
    Boolean? ctg_prefix
    Int in_do_tm_four
    String out_dot_g
  }
  command <<<
    pblayout m4_to_g \
      ~{in_do_tm_four} \
      ~{out_dot_g} \
      ~{if (disable_chime_r_bridge_removal) then "--disable-chimer-bridge-removal" else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (ctg_prefix) then "--ctg-prefix" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    disable_chime_r_bridge_removal: "), utg_data, utg_data0 (maybe)"
    lfc: "use local flow constraint method rather than best overlap method to resolve\\nknots in string graph"
    ctg_prefix: "STR  Prefix for contig names."
    in_do_tm_four: "STR  Input M4 or M4F. (default should be preads.m4"
    out_dot_g: "STR  (Output Graph: ctg_paths, c_path, sg_edges_list, chimer_nodes (if not"
  }
  output {
    File out_stdout = stdout()
  }
}