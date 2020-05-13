version 1.0

task QuasitoolsDndsOPTIONSCSVOFFSET {
  input {
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds OPTIONS CSV OFFSET \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}