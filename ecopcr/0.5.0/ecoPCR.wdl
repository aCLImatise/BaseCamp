version 1.0

task EcoPCR {
  input {
    String? d
    String? var_1
    String? var_2
    String? e
    String? r
    String? i
    Boolean? k
    String oligo_one
    String oligo_two
  }
  command <<<
    ecoPCR \
      ~{oligo_one} \
      ~{oligo_two} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(var_1) then ("-l " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-L " +  '"' + var_2 + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{true="-k" false="" k}
  >>>
  parameter_meta {
    d: ""
    var_1: ""
    var_2: ""
    e: ""
    r: ""
    i: ""
    k: ""
    oligo_one: ""
    oligo_two: ""
  }
}