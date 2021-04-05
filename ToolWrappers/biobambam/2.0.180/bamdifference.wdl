version 1.0

task Bamdifference {
  input {
    Boolean? verbose
    Boolean? md_five
    File? md_five_filename
    String full_dot_bam
    String partial_dot_bam
  }
  command <<<
    bamdifference \
      ~{full_dot_bam} \
      ~{partial_dot_bam} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (md_five) then "--md5" else ""} \
      ~{if defined(md_five_filename) then ("--md5filename " +  '"' + md_five_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0"
  }
  parameter_meta {
    verbose: ": print progress report"
    md_five: "<[0]>              : create md5 check sum (default: 0)"
    md_five_filename: ": file name for md5 check sum (default: extend output file name)"
    full_dot_bam: ""
    partial_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_md_five_filename = "${in_md_five_filename}"
  }
}