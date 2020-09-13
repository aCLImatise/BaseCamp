version 1.0

task StrainestMap2snp {
  input {
    String reference
    String mapped
    String var_output
  }
  command <<<
    strainest map2snp \
      ~{reference} \
      ~{mapped} \
      ~{var_output}
  >>>
  parameter_meta {
    reference: ""
    mapped: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}