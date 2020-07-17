version 1.0

task AutoAug.pl {
  input {
    String? species
    String? genome
    String? cdna
    String? training_set
  }
  command <<<
    autoAug.pl \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(cdna) then ("--cdna " +  '"' + cdna + '"') else ""} \
      ~{if defined(training_set) then ("--trainingset " +  '"' + training_set + '"') else ""}
  >>>
  parameter_meta {
    species: ""
    genome: ""
    cdna: ""
    training_set: ""
  }
}