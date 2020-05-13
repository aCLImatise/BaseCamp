version 1.0

task QuasitoolsDndsCSV {
  input {
    String? optionsOptions
    String? csvCsv
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds CSV \
      ~{optionsOptions} \
      ~{csvCsv} \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}