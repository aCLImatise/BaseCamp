version 1.0

task GsutilRsync {
  input {
    Boolean? a
    Boolean? var_1
    Boolean? var_2
    Boolean? d
    Boolean? e
    Boolean? n
    Boolean? p
    Boolean? r
    Boolean? u
    Boolean? x
  }
  command <<<
    gsutil rsync \
      ~{true="-a" false="" a} \
      ~{true="-c" false="" var_1} \
      ~{true="-C" false="" var_2} \
      ~{true="-d" false="" d} \
      ~{true="-e" false="" e} \
      ~{true="-n" false="" n} \
      ~{true="-p" false="" p} \
      ~{true="-r" false="" r} \
      ~{true="-U" false="" u} \
      ~{true="-x" false="" x}
  >>>
  parameter_meta {
    a: ""
    var_1: ""
    var_2: ""
    d: ""
    e: ""
    n: ""
    p: ""
    r: ""
    u: ""
    x: ""
  }
}