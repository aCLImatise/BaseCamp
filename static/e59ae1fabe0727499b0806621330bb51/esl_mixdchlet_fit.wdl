version 1.0

task EslMixdchletFit {
  input {
    String? set_random_seed
    Boolean? options
  }
  command <<<
    esl-mixdchlet fit \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    set_random_seed: ": set random number seed to <n>  [0]"
    options: ""
  }
}