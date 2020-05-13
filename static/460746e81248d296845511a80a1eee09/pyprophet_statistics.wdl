version 1.0

task PyprophetStatistics {
  input {
    String? optionsOptions
  }
  command <<<
    pyprophet statistics \
      ~{optionsOptions}
  >>>
}