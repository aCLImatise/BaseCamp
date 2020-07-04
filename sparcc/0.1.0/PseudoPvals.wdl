version 1.0

task PseudoPvals.py {
  input {
    String? type
    String? outfile
    String compute
    String pseudo
    String p_vals
    String var_5
    String a
    String set
    String correlations
    String obtained
    String var_10
    String permuted
    String data_dot
  }
  command <<<
    PseudoPvals.py \
      ~{compute} \
      ~{pseudo} \
      ~{p_vals} \
      ~{var_5} \
      ~{a} \
      ~{set} \
      ~{correlations} \
      ~{obtained} \
      ~{var_10} \
      ~{permuted} \
      ~{data_dot} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    type: "Type of p-values to computed.  oned-sided | two-sided (default)."
    outfile: "Name of file to which p-values will be written."
    compute: ""
    pseudo: ""
    p_vals: ""
    var_5: ""
    a: ""
    set: ""
    correlations: ""
    obtained: ""
    var_10: ""
    permuted: ""
    data_dot: ""
  }
}