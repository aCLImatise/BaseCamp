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
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    mine_value: ""
    max_evalue: ""
    step: ""
  }
  output {
    File out_stdout = stdout()
  }
}