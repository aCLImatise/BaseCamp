version 1.0

task EslMixdchletSample {
  input {
    String? set_number_seed
    String? _alphabet_size
    String? number_mixture_components
    Boolean? options
  }
  command <<<
    esl-mixdchlet sample \
      ~{if defined(set_number_seed) then ("-s " +  '"' + set_number_seed + '"') else ""} \
      ~{if defined(_alphabet_size) then ("-K " +  '"' + _alphabet_size + '"') else ""} \
      ~{if defined(number_mixture_components) then ("-Q " +  '"' + number_mixture_components + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    set_number_seed: ": set random number seed  [0]"
    _alphabet_size: ": alphabet size  [20]"
    number_mixture_components: ": number of mixture components  [9]"
    options: ""
  }
}