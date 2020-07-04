version 1.0

task AutoAugPred.pl {
  input {
    String? genome
    String? species
  }
  command <<<
    autoAugPred.pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    genome: ""
    species: ""
  }
}