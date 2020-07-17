version 1.0

task _fproml {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? model
    Boolean? gamma_type
  }
  command <<<
    _fproml \
      ~{true="-ncategories" false="" n_categories} \
      ~{true="-weights" false="" weights} \
      ~{true="-model" false="" model} \
      ~{true="-gammatype" false="" gamma_type}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories (Integer from 1 to 9)"
    weights: "properties Weights file"
    model: "menu       [Jones-Taylor-Thornton] Probability model for amino acid change (Values: j (Jones-Taylor-Thornton); h (Henikoff/Tillier PMBs); d (Dayhoff PAM))"
    gamma_type: "menu       [Constant rate] Rate variation among sites (Values: g (Gamma distributed rates); i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant rate))"
  }
}