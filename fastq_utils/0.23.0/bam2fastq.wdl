version 1.0

task Bam2fastq {
  input {
    String? bam
    String? out
  }
  command <<<
    bam2fastq \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bam: ""
    out: ""
  }
}