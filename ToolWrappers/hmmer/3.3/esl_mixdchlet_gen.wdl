version 1.0

task EslmixdchletGen {
  input {
    Int? set_random_seed
    Int? number_counts_vector
    Int? number_countvectors_generate
    Boolean? options
  }
  command <<<
    esl_mixdchlet gen \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{if defined(number_counts_vector) then ("-M " +  '"' + number_counts_vector + '"') else ""} \
      ~{if defined(number_countvectors_generate) then ("-N " +  '"' + number_countvectors_generate + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    set_random_seed: ": set random number seed  [0]"
    number_counts_vector: ": number of counts per vector  [100]"
    number_countvectors_generate: ": number of countvectors to generate  [1000]"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}