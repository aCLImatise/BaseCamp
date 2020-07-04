version 1.0

task DshCompressGff3 {
  input {
    Boolean? about
    Boolean? input_gff_three_file
    Boolean? output_gff_three_file
    String? args
  }
  command <<<
    dsh-compress-gff3 \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-gff3-file" false="" input_gff_three_file} \
      ~{true="--output-gff3-file" false="" output_gff_three_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_gff_three_file: "[class java.io.File]  input GFF3 file, default stdin [optional]"
    output_gff_three_file: "[class java.io.File]  output GFF3 file, default stdout [optional]"
    args: ""
  }
}