version 1.0

task FalconcM4filtcontained {
  input {
    Boolean? _infn_string
    File? _outfn_string
    Boolean? lfc
    Boolean? disable_chime_r_bridge_removal
    Boolean? ctg_prefix
    Boolean? min_len
    Boolean? min_idt_pct
    String help
  }
  command <<<
    falconc m4filt_contained \
      ~{help} \
      ~{if (_infn_string) then "-i" else ""} \
      ~{if (_outfn_string) then "-o" else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (disable_chime_r_bridge_removal) then "--disable_chimer_bridge_removal" else ""} \
      ~{if (ctg_prefix) then "--ctg_prefix" else ""} \
      ~{if (min_len) then "--min-len" else ""} \
      ~{if (min_idt_pct) then "--min-idt-pct" else ""}
  >>>
  parameter_meta {
    _infn_string: "=, --in-fn=                    string  REQUIRED  Input m4 overlap file"
    _outfn_string: "=, --out-fn=                   string  REQUIRED  Output m4 overlap file"
    lfc: "bool    false     IGNORED (used in\\novlp_to_graph)"
    disable_chime_r_bridge_removal: "bool    false     IGNORED (used in\\novlp_to_graph)"
    ctg_prefix: "=                    string  \\\"\\\"        IGNORED (used in\\novlp_to_graph)"
    min_len: "=                       int     400       Minimum read length; reads\\nshorter than minLen will be\\ndiscarded"
    min_idt_pct: "=                   float   96.0      Minimum overlap identity;\\nworse overlaps will be\\ndiscarded\\n"
    help: "--help-syntax                                      advanced:"
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
  }
}