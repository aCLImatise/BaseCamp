version 1.0

task Squid {
  input {
    Boolean? bool_output_gragh
    Boolean? co
    Boolean? to
    Boolean? rg
    String? b
    String? o
  }
  command <<<
    squid \
      ~{true="-G" false="" bool_output_gragh} \
      ~{true="-CO" false="" co} \
      ~{true="-TO" false="" to} \
      ~{true="-RG" false="" rg} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    bool_output_gragh: "bool    Output gragh file (0)"
    co: "bool    Output ordering of connected components (0)"
    to: "bool    Output ordering of all segments (0)"
    rg: "bool    Output rearranged genome sequence (0)"
    b: ""
    o: ""
  }
}