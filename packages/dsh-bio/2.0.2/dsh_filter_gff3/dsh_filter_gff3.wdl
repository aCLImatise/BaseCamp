version 1.0

task Dshfiltergff3 {
  input {
    Boolean? about
    Boolean? range
    Boolean? score
    Boolean? script
    Boolean? input_gff_three_file
    File? output_gff_three_file
  }
  command <<<
    dsh_filter_gff3 \
      ~{if (about) then "--about" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_gff_three_file) then "--input-gff3-file" else ""} \
      ~{if (output_gff_three_file) then "--output-gff3-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    score: "[class java.lang.Integer]  filter by score [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_three_file = "${in_output_gff_three_file}"
  }
}