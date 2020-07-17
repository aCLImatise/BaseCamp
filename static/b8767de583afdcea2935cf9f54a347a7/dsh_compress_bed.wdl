version 1.0

task DshCompressBed {
  input {
    Boolean? about
    Boolean? input_bed_file
    Boolean? output_bed_file
    String? args
  }
  command <<<
    dsh-compress-bed \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-bed-file" false="" input_bed_file} \
      ~{true="--output-bed-file" false="" output_bed_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_bed_file: "[class java.io.File]  input BED file, default stdin [optional]"
    output_bed_file: "[class java.io.File]  output BED file, default stdout [optional]"
    args: ""
  }
}