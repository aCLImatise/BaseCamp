version 1.0

task SamtoolsReheader {
  input {
    Boolean? no_pg
    Boolean? in_place
    String? pass_header_sam
    String in_dot_header_dots_am
    String in_dot_bam
  }
  command <<<
    samtools reheader \
      ~{in_dot_header_dots_am} \
      ~{in_dot_bam} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if (in_place) then "--in-place" else ""} \
      ~{if defined(pass_header_sam) then ("--command " +  '"' + pass_header_sam + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    no_pg: "Do not generate a @PG header line."
    in_place: "Modify the CRAM file directly, if possible.\\n(Defaults to outputting to stdout.)"
    pass_header_sam: "Pass the header in SAM format to external program CMD."
    in_dot_header_dots_am: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}