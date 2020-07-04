version 1.0

task BedtoolsRandom {
  input {
    Boolean? length_generate_default
    Boolean? number_generate_default
    Boolean? seed
    String? g
  }
  command <<<
    bedtools random \
      ~{true="-l" false="" length_generate_default} \
      ~{true="-n" false="" number_generate_default} \
      ~{true="-seed" false="" seed} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    length_generate_default: "The length of the intervals to generate. - Default = 100. - (INTEGER)"
    number_generate_default: "The number of intervals to generate. - Default = 1,000,000. - (INTEGER)"
    seed: "Supply an integer seed for the shuffling. - By default, the seed is chosen automatically. - (INTEGER)"
    g: ""
  }
}