version 1.0

task QuasitoolsDndsOFFSET {
  input {
    String? optionsOptions
    String? csvCsv
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds OFFSET \
      ~{optionsOptions} \
      ~{csvCsv} \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}