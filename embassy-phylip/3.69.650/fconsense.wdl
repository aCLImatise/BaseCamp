version 1.0

task Fconsense {
  input {
    Boolean? method
  }
  command <<<
    fconsense \
      ~{true="-method" false="" method}
  >>>
  parameter_meta {
    method: "menu       [mre] Consensus method (Values: s (strict consensus tree); mr (Majority Rule); mre (Majority Rule (extended)); ml (Minimum fraction (0.5 to 1.0)))"
  }
}