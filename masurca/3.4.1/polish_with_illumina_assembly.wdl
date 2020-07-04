version 1.0

task PolishWithIlluminaAssembly.sh {
  input {
    String? r
    String? q
    String? t
    Int? i
    Boolean? m
  }
  command <<<
    polish_with_illumina_assembly.sh \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{true="-m" false="" m}
  >>>
  parameter_meta {
    r: ""
    q: ""
    t: ""
    i: ""
    m: ""
  }
}