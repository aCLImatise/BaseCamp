version 1.0

task Fclique {
  input {
    Boolean? anc_file
    Boolean? factor_file
    Boolean? weights
    Boolean? cli_qm_in
    Boolean? out_gr_no
    Boolean? print_data
    Boolean? print_comp
    File file
  }
  command <<<
    fclique \
      ~{file} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (factor_file) then "-factorfile" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (cli_qm_in) then "-cliqmin" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (print_comp) then "-printcomp" else ""}
  >>>
  parameter_meta {
    anc_file: "properties Phylip ancestral states file (optional)"
    factor_file: "properties Phylip multistate factors file (optional)"
    weights: "properties Phylip weights file (optional)"
    cli_qm_in: "integer    [0] Minimum clique size (Integer 0 or more)"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    print_data: "boolean    [N] Print data at start of run"
    print_comp: "boolean    [N] Print out compatibility matrix"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}