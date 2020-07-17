version 1.0

task PrefixEditDistanceMatchLimitGenerate {
  input {
    Int mine_value
    Int? max_evalue
    String? step
  }
  command <<<
    prefixEditDistance-matchLimitGenerate \
      ~{mine_value} \
      ~{max_evalue} \
      ~{step}
  >>>
  parameter_meta {
    mine_value: ""
    max_evalue: ""
    step: ""
  }
}