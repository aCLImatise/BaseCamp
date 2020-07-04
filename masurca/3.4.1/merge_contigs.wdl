version 1.0

task MergeContigs.sh {
  input {
    String? r
    String? q
    String? t
    Boolean? m
  }
  command <<<
    merge_contigs.sh \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="-m" false="" m}
  >>>
  parameter_meta {
    r: ""
    q: ""
    t: ""
    m: ""
  }
}