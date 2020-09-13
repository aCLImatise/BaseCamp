version 1.0

task Extractlongsequencespy {
  input {
    Boolean? info
    File? name_output_sequence
    Int? length
    Boolean? gzip
    Boolean? bzip
    String input_filenames
  }
  command <<<
    extract_long_sequences_py \
      ~{input_filenames} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(name_output_sequence) then ("--output " +  '"' + name_output_sequence + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    name_output_sequence: "The name of the output sequence file. (default:\\n<_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='utf-8'>)"
    length: "The minimum length of the sequence file. (default:\\n200)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    input_filenames: "Input FAST[AQ] sequence filename."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_sequence = "${in_name_output_sequence}"
  }
}