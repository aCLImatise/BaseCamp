version 1.0

task FlyesamtoolsReheader {
  input {
    Boolean? no_pg
    Boolean? in_place
    String or
  }
  command <<<
    flye_samtools reheader \
      ~{or} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if (in_place) then "--in-place" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_pg: "Do not generate an @PG header line."
    in_place: "Modify the bam/cram file directly.\\n(Defaults to outputting to stdout.)\\n"
    or: "samtools reheader [-P] -i in.header.sam file.bam"
  }
  output {
    File out_stdout = stdout()
  }
}