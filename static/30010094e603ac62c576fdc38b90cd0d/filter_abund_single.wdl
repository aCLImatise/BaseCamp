version 1.0

task FilterAbundSingle.py {
  input {
    Boolean? gzip
    Boolean? bzip
    Boolean? info
    String? k
    String input_sequence_filename
  }
  command <<<
    filter-abund-single.py \
      ~{input_sequence_filename} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--info" false="" info} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    info: ""
    k: ""
    input_sequence_filename: "FAST[AQ] sequence file to trim"
  }
}