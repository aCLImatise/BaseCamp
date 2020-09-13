version 1.0

task PblayoutM4tog {
  input {
    Boolean? disable_chime_r_bridge_removal
    Boolean? lfc
    Boolean? ctg_prefix
    Int in_do_tm_four
    Int pre_ads_do_tm_four
  }
  command <<<
    pblayout m4_to_g \
      ~{in_do_tm_four} \
      ~{pre_ads_do_tm_four} \
      ~{if (disable_chime_r_bridge_removal) then "--disable-chimer-bridge-removal" else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (ctg_prefix) then "--ctg-prefix" else ""}
  >>>
  parameter_meta {
    disable_chime_r_bridge_removal: "),"
    lfc: "use local flow constraint method rather\\nthan best overlap method to resolve\\nknots in string graph"
    ctg_prefix: "STR  Prefix for contig names."
    in_do_tm_four: "STR  Input M4 or M4F. (default should be"
    pre_ads_do_tm_four: "out.g                            STR  (Output Graph: ctg_paths, c_path,"
  }
  output {
    File out_stdout = stdout()
  }
}