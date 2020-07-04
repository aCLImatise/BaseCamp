version 1.0

task DshFilterBed {
  input {
    Boolean? about
    Boolean? range
    Boolean? score
    Boolean? script
    Boolean? input_bed_file
    Boolean? output_bed_file
  }
  command <<<
    dsh-filter-bed \
      ~{true="--about" false="" about} \
      ~{true="--range" false="" range} \
      ~{true="--score" false="" score} \
      ~{true="--script" false="" script} \
      ~{true="--input-bed-file" false="" input_bed_file} \
      ~{true="--output-bed-file" false="" output_bed_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    score: "[class java.lang.Integer]  filter by score [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_bed_file: "[class java.io.File]  input BED file, default stdin [optional]"
    output_bed_file: "[class java.io.File]  output BED file, default stdout [optional]"
  }
}