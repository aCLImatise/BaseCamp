version 1.0

task Repaq {
  input {
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
      ~{true="--stdin" false="" stdin} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--interleaved_in" false="" interleaved_in} \
      ~{true="--compare" false="" compare} \
      ~{true="--rfq_to_compare" false="" rfq_to_compare} \
      ~{true="--json_compare_result" false="" json_compare_result} \
      ~{true="--thread" false="" thread} \
      ~{true="--compression" false="" compression}
  >>>
  parameter_meta {
    stdin: "input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also add --interleaved_in."
    stdout: "write to STDOUT. When decompressing PE data, this option will result in interleaved FASTQ output for paired-end input. Disabled by defaut."
    interleaved_in: "indicate that <in1> is an interleaved paired-end FASTQ which contains both read1 and read2. Disabled by defaut."
    compare: "compare the files read by read to check the compression consistency. <rfq_to_compare> should be specified in this mode."
    rfq_to_compare: "the RFQ file to be compared with the input. This option is only used in compare mode. (string [=])"
    json_compare_result: "the file to store the comparison result. This is optional since the result is also printed on STDOUT. (string [=])"
    thread: "thread number for xz compression. Higher thread num means higher speed and lower compression ratio (1~16), default 1. (int [=1])"
    compression: "compression level. Higher level means higher compression ratio, and more RAM usage (1~9), default 4. (int [=4])"
  }
}