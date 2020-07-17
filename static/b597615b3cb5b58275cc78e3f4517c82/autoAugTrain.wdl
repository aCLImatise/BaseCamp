version 1.0

task AutoAugTrain.pl {
  input {
    String? training_set
    String? species
  }
  command <<<
    autoAugTrain.pl \
      ~{if defined(training_set) then ("--trainingset " +  '"' + training_set + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    training_set: ""
    species: ""
  }
}