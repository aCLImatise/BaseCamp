version 1.0

task MedakaCounts {
  input {
    Boolean? print
    Array[String] d_types
    Array[String] norm
    String bam
    String region
  }
  command <<<
    medaka_counts \
      ~{bam} \
      ~{region} \
      ~{if (print) then "--print" else ""} \
      ~{if defined(d_types) then ("--dtypes " +  '"' + d_types + '"') else ""} \
      ~{if defined(norm) then ("--norm " +  '"' + norm + '"') else ""}
  >>>
  parameter_meta {
    print: "print counts. (default: False)"
    d_types: "perform a multi-datatype tests. (default: None)"
    norm: "additional normalisation tests. (total, fwd_rev)\\n(default: None)\\n"
    bam: "alignment file."
    region: "alignment region to sample."
  }
  output {
    File out_stdout = stdout()
  }
}