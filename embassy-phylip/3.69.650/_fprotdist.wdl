version 1.0

task _fprotdist {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? method
  }
  command <<<
    _fprotdist \
      ~{true="-ncategories" false="" n_categories} \
      ~{true="-weights" false="" weights} \
      ~{true="-method" false="" method}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories (Integer from 1 to 9)"
    weights: "properties Weights file"
    method: "menu       [j] Choose the method to use (Values: j (Jones-Taylor-Thornton matrix); h (Henikoff/Tiller PMB matrix); d (Dayhoff PAM matrix); k (Kimura formula); s (Similarity table); c (Categories model))"
  }
}