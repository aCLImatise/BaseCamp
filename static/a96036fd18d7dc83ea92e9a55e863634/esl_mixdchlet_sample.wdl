version 1.0

task EslmixdchletSample {
  input {
    Int? set_random_seed
    Int? _alphabet_size
    Int? number_mixture_components
  }
  command <<<
    esl_mixdchlet sample \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{if defined(_alphabet_size) then ("-K " +  '"' + _alphabet_size + '"') else ""} \
      ~{if defined(number_mixture_components) then ("-Q " +  '"' + number_mixture_components + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_random_seed: ": set random number seed  [0]"
    _alphabet_size: ": alphabet size  [20]"
    number_mixture_components: ": number of mixture components  [9]"
  }
  output {
    File out_stdout = stdout()
  }
}