version 1.0

task ExtractLongSequences.py {
  input {
    Boolean? info
    String? name_output_sequence
    Int? length
    Boolean? gzip
    Boolean? bzip
    String input_filenames
  }
  command <<<
    extract-long-sequences.py \
      ~{input_filenames} \
      ~{true="--info" false="" info} \
      ~{if defined(name_output_sequence) then ("--output " +  '"' + name_output_sequence + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip}
  >>>
  parameter_meta {
    info: "print citation information"
    name_output_sequence: "The name of the output sequence file. (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
    length: "The minimum length of the sequence file. (default: 200)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    input_filenames: "Input FAST[AQ] sequence filename."
  }
}