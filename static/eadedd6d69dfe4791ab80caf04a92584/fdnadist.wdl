version 1.0

task Fdnadist {
  input {
    Boolean? method
    Boolean? weights
  }
  command <<<
    fdnadist \
      ~{true="-method" false="" method} \
      ~{true="-weights" false="" weights}
  >>>
  parameter_meta {
    method: "menu       [F84 distance model] Choose the method to use (Values: f (F84 distance model); k (Kimura 2-parameter distance); j (Jukes-Cantor distance); l (LogDet distance); s (Similarity table))"
    weights: "properties Weights file"
  }
}