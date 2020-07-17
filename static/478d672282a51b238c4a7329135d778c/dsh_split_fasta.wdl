version 1.0

task DshSplitFasta {
  input {
    Boolean? about
    Boolean? input_file
    Boolean? bytes
    Boolean? records
    Boolean? prefix
    Boolean? left_pad
    Boolean? suffix
    Boolean? line_width
  }
  command <<<
    dsh-split-fasta \
      ~{true="--about" false="" about} \
      ~{true="--input-file" false="" input_file} \
      ~{true="--bytes" false="" bytes} \
      ~{true="--records" false="" records} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--left-pad" false="" left_pad} \
      ~{true="--suffix" false="" suffix} \
      ~{true="--line-width" false="" line_width}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    bytes: "[class java.lang.String]  split input file at next record after each n bytes [optional]"
    records: "[class java.lang.Long]  split input file after each n records [optional]"
    prefix: "[class java.lang.String]  output file prefix [optional]"
    left_pad: "[class java.lang.Integer]  left pad split index in output file name [optional]"
    suffix: "[class java.lang.String]  output file suffix, e.g. .fa.gz [optional]"
    line_width: "[class java.lang.Integer]  line width, default 70 [optional]"
  }
}