version 1.0

task Dshfiltersam {
  input {
    Boolean? about
    Boolean? range
    Boolean? mapq
    Boolean? script
    Boolean? input_sam_file
    File? output_sam_file
  }
  command <<<
    dsh_filter_sam \
      ~{if (about) then "--about" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_sam_file) then "--input-sam-file" else ""} \
      ~{if (output_sam_file) then "--output-sam-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    mapq: "[class java.lang.Integer]  filter by mapq [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_sam_file: "[class java.io.File]  input SAM file, default stdin [optional]"
    output_sam_file: "[class java.io.File]  output SAM file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_sam_file = "${in_output_sam_file}"
  }
}