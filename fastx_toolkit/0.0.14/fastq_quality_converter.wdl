version 1.0

task FastqQualityConverter {
  input {
    String? f
    File? i
    Boolean? z
    Boolean? n
    Boolean? a
  }
  command <<<
    fastq_quality_converter \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (a) then "-a" else ""}
  >>>
  parameter_meta {
    f: ""
    i: ""
    z: ""
    n: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}