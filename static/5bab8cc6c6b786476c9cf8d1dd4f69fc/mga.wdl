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
      ~{if (multiple_species_sequences) then "-m" else ""} \
      ~{if (single_species_sequences) then "-s" else ""}
  >>>
  parameter_meta {
    multiple_species_sequences: ": multiple species (sequences are individually treated)"
    single_species_sequences: ": single species (sequences are treated as a unit)"
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}