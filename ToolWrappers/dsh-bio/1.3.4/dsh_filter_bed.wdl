version 1.0

task Dshfilterbed {
  input {
    Boolean? about
    Boolean? range
    Boolean? score
    Boolean? script
    Boolean? input_bed_file
    File? output_bed_file
  }
  command <<<
    dsh_filter_bed \
      ~{if (about) then "--about" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_bed_file) then "--input-bed-file" else ""} \
      ~{if (output_bed_file) then "--output-bed-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    score: "[class java.lang.Integer]  filter by score [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_bed_file: "[class java.io.File]  input BED file, default stdin [optional]"
    output_bed_file: "[class java.io.File]  output BED file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}