version 1.0

task EslMixdchletGen {
  input {
    String? set_number_seed
    String? number_counts_vector
    String? number_countvectors_generate
    Boolean? options
  }
  command <<<
    esl-mixdchlet gen \
      ~{if defined(set_number_seed) then ("-s " +  '"' + set_number_seed + '"') else ""} \
      ~{if defined(number_counts_vector) then ("-M " +  '"' + number_counts_vector + '"') else ""} \
      ~{if defined(number_countvectors_generate) then ("-N " +  '"' + number_countvectors_generate + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    set_number_seed: ": set random number seed  [0]"
    number_counts_vector: ": number of counts per vector  [100]"
    number_countvectors_generate: ": number of countvectors to generate  [1000]"
    options: ""
  }
}