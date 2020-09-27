version 1.0

task UmisFastqtransform {
  input {
    Boolean? keep_fast_q_tags
    String transform
    Int fast_q_one
    Int? fast_q_two
    Int? fast_q_three
  }
  command <<<
    umis fastqtransform \
      ~{transform} \
      ~{fast_q_one} \
      ~{fast_q_two} \
      ~{fast_q_three} \
      ~{if (keep_fast_q_tags) then "--keep_fastq_tags" else ""}
  >>>
  parameter_meta {
    keep_fast_q_tags: "--separate_cb         Keep dual index barcodes separate.\\n--demuxed_cb TEXT\\n--cores INTEGER\\n--fastq1out TEXT\\n--fastq2out TEXT\\n--min_length INTEGER  Minimum length of read to keep.\\n--help                Show this message and exit.\\n"
    transform: ""
    fast_q_one: ""
    fast_q_two: ""
    fast_q_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}