version 1.0

task FastqQualityFilter {
  input {
    String? o
    File? i
    Boolean? z
    String? p
    String? q
    Boolean? v
  }
  command <<<
    fastq_quality_filter \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    z: ""
    p: ""
    q: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}