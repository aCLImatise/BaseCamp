version 1.0

task Ushuffle {
  input {
    String? specifies_the_sequence
    String? specifies_number_generate
    String? specifies_let_size
    String? seed
    Boolean? benchmark
  }
  command <<<
    ushuffle \
      ~{if defined(specifies_the_sequence) then ("-s " +  '"' + specifies_the_sequence + '"') else ""} \
      ~{if defined(specifies_number_generate) then ("-n " +  '"' + specifies_number_generate + '"') else ""} \
      ~{if defined(specifies_let_size) then ("-k " +  '"' + specifies_let_size + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{true="-b" false="" benchmark}
  >>>
  parameter_meta {
    specifies_the_sequence: "specifies the sequence"
    specifies_number_generate: "specifies the number of random sequences to generate"
    specifies_let_size: "specifies the let size"
    seed: "specifies the seed for random number generator"
    benchmark: "benchmark"
  }
}