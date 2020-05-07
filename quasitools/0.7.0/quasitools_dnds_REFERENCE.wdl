version 1.0

task QuasitoolsDndsREFERENCE {
  input {
    String? optionsOptions
    String? csvCsv
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds REFERENCE \
      ~{optionsOptions} \
      ~{csvCsv} \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}