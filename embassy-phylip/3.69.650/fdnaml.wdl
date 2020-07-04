version 1.0

task Fdnaml {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? gamma_type
  }
  command <<<
    fdnaml \
      ~{true="-ncategories" false="" n_categories} \
      ~{true="-weights" false="" weights} \
      ~{true="-gammatype" false="" gamma_type}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories (Integer from 1 to 9)"
    weights: "properties Weights file"
    gamma_type: "menu       [Constant rate] Rate variation among sites (Values: g (Gamma distributed rates); i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant rate))"
  }
}