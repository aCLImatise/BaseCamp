version 1.0

task QuasitoolsDndsOPTIONSREFERENCE {
  input {
    String? csvCsv
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds OPTIONS REFERENCE \
      ~{csvCsv} \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}