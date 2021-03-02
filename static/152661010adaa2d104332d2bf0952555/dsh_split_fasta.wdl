version 1.0

task Dshsplitfasta {
  input {
    Boolean? about
    Boolean? input_file
    Boolean? bytes
    Boolean? records
    File? prefix
    Boolean? left_pad
    File? suffix
    Boolean? line_width
  }
  command <<<
    dsh_split_fasta \
      ~{if (about) then "--about" else ""} \
      ~{if (input_file) then "--input-file" else ""} \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (records) then "--records" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (left_pad) then "--left-pad" else ""} \
      ~{if (suffix) then "--suffix" else ""} \
      ~{if (line_width) then "--line-width" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_suffix = "${in_suffix}"
  }
}