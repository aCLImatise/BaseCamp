version 1.0

task Emowse {
  input {
    Boolean weightWeight
    Boolean monoMono
  }
  command <<<
    emowse \
      ~{true="-weight" false="" weightWeight} \
      ~{true="-mono" false="" monoMono}
  >>>
}