version 1.0

task QuasitoolsDndsOPTIONSOFFSET {
  input {
    String? csvCsv
    String? referenceReference
    String? offsetOffset
  }
  command <<<
    quasitools dnds OPTIONS OFFSET \
      ~{csvCsv} \
      ~{referenceReference} \
      ~{offsetOffset}
  >>>
}