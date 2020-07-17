version 1.0

task HtsboxSamsort {
  input {
    Boolean? s
    String? l
    String? t
    String sam_sort
    String in_dot_bam
  }
  command <<<
    htsbox samsort \
      ~{sam_sort} \
      ~{in_dot_bam} \
      ~{true="-S" false="" s} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    l: ""
    t: ""
    sam_sort: ""
    in_dot_bam: ""
  }
}