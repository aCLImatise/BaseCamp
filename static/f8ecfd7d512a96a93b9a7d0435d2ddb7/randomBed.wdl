version 1.0

task RandomBed {
  input {
    Boolean? length_generate_default
    Boolean? number_generate_default
    Boolean? seed
    String? g
    String bed_tools
    String random
  }
  command <<<
    randomBed \
      ~{bed_tools} \
      ~{random} \
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
    bed_tools: ""
    random: ""
  }
}