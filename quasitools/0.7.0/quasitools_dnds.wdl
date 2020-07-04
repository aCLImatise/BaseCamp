version 1.0

task QuasitoolsDnds {
  input {
    String csv
    String reference
    String offset
  }
  command <<<
    quasitools dnds \
      ~{csv} \
      ~{reference} \
      ~{offset}
  >>>
  parameter_meta {
    csv: ""
    reference: ""
    offset: ""
  }
}