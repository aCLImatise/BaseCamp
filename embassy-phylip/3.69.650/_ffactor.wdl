version 1.0

task Ffactor {
  input {
    Boolean? anc
    Boolean? factors
    File? out_factor_file
    File? out_an_c_file
    File file
  }
  command <<<
    _ffactor \
      ~{file} \
      ~{if (anc) then "-anc" else ""} \
      ~{if (factors) then "-factors" else ""} \
      ~{if (out_factor_file) then "-outfactorfile" else ""} \
      ~{if (out_an_c_file) then "-outancfile" else ""}
  >>>
  parameter_meta {
    anc: "boolean    [N] Put ancestral states in output file"
    factors: "boolean    [N] Put factors information in output file"
    out_factor_file: "outfile    [*.ffactor] Phylip factor data output file\\n(optional)"
    out_an_c_file: "outfile    [*.ffactor] Phylip ancestor data output file\\n(optional)"
    file: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
    File out_out_factor_file = "${in_out_factor_file}"
    File out_out_an_c_file = "${in_out_an_c_file}"
  }
}