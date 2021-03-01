version 1.0

task FastqQualityTrimmer {
  input {
    String? o
    File? i
    Boolean? z
    String? l
    String? t
    Boolean? v
  }
  command <<<
    fastq_quality_trimmer \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    z: ""
    l: ""
    t: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}