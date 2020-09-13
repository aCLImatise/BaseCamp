version 1.0

task Repaq {
  input {
    Boolean? in_one
    File? out_one
    Boolean? in_two
    File? out_two
    Boolean? compress
    Boolean? decompress
    Boolean? chunk
    Boolean? stdin
    Boolean? stdout
    Boolean? interleaved_in
    Boolean? compare
    Boolean? rfq_to_compare
    Boolean? json_compare_result
    Boolean? thread
    Boolean? compression
  }
  command <<<
    repaq \
      ~{if (in_one) then "--in1" else ""} \
      ~{if (out_one) then "--out1" else ""} \
      ~{if (in_two) then "--in2" else ""} \
      ~{if (out_two) then "--out2" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (chunk) then "--chunk" else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (interleaved_in) then "--interleaved_in" else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (rfq_to_compare) then "--rfq_to_compare" else ""} \
      ~{if (json_compare_result) then "--json_compare_result" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (compression) then "--compression" else ""}
  >>>
  parameter_meta {
    in_one: "input file name (string [=])"
    out_one: "output file name (string [=])"
    in_two: "read2 input file name when encoding paired-end FASTQ files (string [=])"
    out_two: "read2 output file name when decoding to paired-end FASTQ files (string [=])"
    compress: "compress input to output"
    decompress: "decompress input to output"
    chunk: "the chunk size (kilo bases) for encoding, default 1000=1000kb. (int [=1000])"
    stdin: "input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also add --interleaved_in."
    stdout: "write to STDOUT. When decompressing PE data, this option will result in interleaved FASTQ output for paired-end input. Disabled by defaut."
    interleaved_in: "indicate that <in1> is an interleaved paired-end FASTQ which contains both read1 and read2. Disabled by defaut."
    compare: "compare the files read by read to check the compression consistency. <rfq_to_compare> should be specified in this mode."
    rfq_to_compare: "the RFQ file to be compared with the input. This option is only used in compare mode. (string [=])"
    json_compare_result: "the file to store the comparison result. This is optional since the result is also printed on STDOUT. (string [=])"
    thread: "thread number for xz compression. Higher thread num means higher speed and lower compression ratio (1~16), default 1. (int [=1])"
    compression: "compression level. Higher level means higher compression ratio, and more RAM usage (1~9), default 4. (int [=4])"
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}