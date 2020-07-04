version 1.0

task EslSelectn {
  input {
    String? seed
    Boolean? options
  }
  command <<<
    esl-selectn \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    seed: ": set random number generator's seed to <n>  [0]"
    options: ""
  }
}