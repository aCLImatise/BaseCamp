version 1.0

task DshFilterSam {
  input {
    Boolean? about
    Boolean? range
    Boolean? mapq
    Boolean? script
    Boolean? input_sam_file
    Boolean? output_sam_file
  }
  command <<<
    dsh-filter-sam \
      ~{true="--about" false="" about} \
      ~{true="--range" false="" range} \
      ~{true="--mapq" false="" mapq} \
      ~{true="--script" false="" script} \
      ~{true="--input-sam-file" false="" input_sam_file} \
      ~{true="--output-sam-file" false="" output_sam_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    mapq: "[class java.lang.Integer]  filter by mapq [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_sam_file: "[class java.io.File]  input SAM file, default stdin [optional]"
    output_sam_file: "[class java.io.File]  output SAM file, default stdout [optional]"
  }
}