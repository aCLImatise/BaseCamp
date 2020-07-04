version 1.0

task DshFilterGff3 {
  input {
    Boolean? about
    Boolean? range
    Boolean? score
    Boolean? script
    Boolean? input_gff_three_file
    Boolean? output_gff_three_file
  }
  command <<<
    dsh-filter-gff3 \
      ~{true="--about" false="" about} \
      ~{true="--range" false="" range} \
      ~{true="--score" false="" score} \
      ~{true="--script" false="" script} \
      ~{true="--input-gff3-file" false="" input_gff_three_file} \
      ~{true="--output-gff3-file" false="" output_gff_three_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    score: "[class java.lang.Integer]  filter by score [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
  }
}