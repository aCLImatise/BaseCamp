version 1.0

task _emowse {
  input {
    Boolean weightWeight
    Boolean monoMono
  }
  command <<<
    _emowse \
      ~{true="-weight" false="" weightWeight} \
      ~{true="-mono" false="" monoMono}
  >>>
}