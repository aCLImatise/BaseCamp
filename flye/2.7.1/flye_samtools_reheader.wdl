version 1.0

task FlyeSamtoolsReheader {
  input {
    Boolean? no_pg
    Boolean? in_place
    String or
  }
  command <<<
    flye-samtools reheader \
      ~{or} \
      ~{true="--no-PG" false="" no_pg} \
      ~{true="--in-place" false="" in_place}
  >>>
  parameter_meta {
    no_pg: "Do not generate an @PG header line."
    in_place: "Modify the bam/cram file directly. (Defaults to outputting to stdout.)"
    or: "samtools reheader [-P] -i in.header.sam file.bam"
  }
}