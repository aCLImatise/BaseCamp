version 1.0

task PseudoPvalspy {
  input {
    String? type
    File? outfile
    String compute
    String real_cor_file
    String perm_template
    String pseudo
    String num_simulations
    String p_vals
    String from
    String a
    String set
    String correlations
    String obtained
    String permuted
    String data_dot
  }
  command <<<
    PseudoPvals_py \
      ~{compute} \
      ~{real_cor_file} \
      ~{perm_template} \
      ~{pseudo} \
      ~{num_simulations} \
      ~{p_vals} \
      ~{from} \
      ~{a} \
      ~{set} \
      ~{correlations} \
      ~{obtained} \
      ~{permuted} \
      ~{data_dot} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    type: "Type of p-values to computed.  oned-sided | two-sided\\n(default)."
    outfile: "Name of file to which p-values will be written.\\n"
    compute: ""
    real_cor_file: ""
    perm_template: ""
    pseudo: ""
    num_simulations: ""
    p_vals: ""
    from: ""
    a: ""
    set: ""
    correlations: ""
    obtained: ""
    permuted: ""
    data_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}