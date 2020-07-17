version 1.0

task Mga {
  input {
    Boolean? multiple_species_sequences
    Boolean? single_species_sequences
    String? fast_a
  }
  command <<<
    mga \
      ~{fast_a} \
      ~{true="-m" false="" multiple_species_sequences} \
      ~{true="-s" false="" single_species_sequences}
  >>>
  parameter_meta {
    multiple_species_sequences: ": multiple species (sequences are individually treated)"
    single_species_sequences: ": single species (sequences are treated as a unit)"
    fast_a: ""
  }
}