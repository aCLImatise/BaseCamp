version 1.0

task PrefixEditDistancematchLimitGenerate {
  input {
    String mine_value
    String? max_evalue
    String? step
  }
  command <<<
    prefixEditDistance_matchLimitGenerate \
      ~{mine_value} \
      ~{max_evalue} \
      ~{step}
  >>>
  parameter_meta {
    mine_value: ""
    max_evalue: ""
    step: ""
  }
  output {
    File out_stdout = stdout()
  }
}