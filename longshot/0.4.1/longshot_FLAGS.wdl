version 1.0

task LongshotFLAGS {
  input {
    String? bam
    String? ref
    String? out
  }
  command <<<
    longshot FLAGS \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: ""
    ref: ""
    out: ""
  }
}