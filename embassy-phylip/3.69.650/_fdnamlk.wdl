version 1.0

task _fdnamlk {
  input {
    Boolean? n_categories
    Boolean? gamma_type
  }
  command <<<
    _fdnamlk \
      ~{true="-ncategories" false="" n_categories} \
      ~{true="-gammatype" false="" gamma_type}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories (Integer from 1 to 9)"
    gamma_type: "menu       [Constant rate] Rate variation among sites (Values: g (Gamma distributed rates); i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant rate))"
  }
}