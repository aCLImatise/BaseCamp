version 1.0

task QuasitoolsDndsOPTIONSCSVREFERENCE {
  input {
    String? offsetOffset
  }
  command <<<
    quasitools dnds OPTIONS CSV REFERENCE \
      ~{offsetOffset}
  >>>
}