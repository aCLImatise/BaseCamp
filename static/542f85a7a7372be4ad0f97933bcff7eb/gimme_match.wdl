version 1.0

task GimmeMatch {
  input {
    Boolean? h
    String? d
    Int? n
  }
  command <<<
    gimme match \
      ~{true="-h" false="" h} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    h: ""
    d: ""
    n: ""
  }
}