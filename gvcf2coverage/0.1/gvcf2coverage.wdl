version 1.0

task Gvcf2coverage {
  input {
    String? t
    String? d
    Boolean? n
  }
  command <<<
    gvcf2coverage \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-n" false="" n}
  >>>
  parameter_meta {
    t: ""
    d: ""
    n: ""
  }
}