version 1.0

task PermuteGPAT++ {
  input {
    String permute_gp_at
  }
  command <<<
    permuteGPAT++ \
      ~{permute_gp_at}
  >>>
  parameter_meta {
    permute_gp_at: ""
  }
}