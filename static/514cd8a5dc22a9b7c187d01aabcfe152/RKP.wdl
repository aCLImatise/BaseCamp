version 1.0

task RKP.py {
  input {
    String? a
    String? h
    String? d
    String? k
    Boolean? at
  }
  command <<<
    RKP.py \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""} \
      ~{if defined(h) then ("-H " +  '"' + h + '"') else ""} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-at" false="" at}
  >>>
  parameter_meta {
    a: ""
    h: ""
    d: ""
    k: ""
    at: ""
  }
}