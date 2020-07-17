version 1.0

task Polca.sh {
  input {
    String? a
    Boolean? r
  }
  command <<<
    polca.sh \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    a: ""
    r: ""
  }
}