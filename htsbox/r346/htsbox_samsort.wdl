version 1.0

task HtsboxSamsort {
  input {
    String? t
    String? l
    Boolean? s
    String sam_sort
    String in_dot_bam
  }
  command <<<
    htsbox samsort \
      ~{sam_sort} \
      ~{in_dot_bam} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if (s) then "-S" else ""}
  >>>
  parameter_meta {
    t: ""
    l: ""
    s: ""
    sam_sort: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}