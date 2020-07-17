version 1.0

task MmseqsCreatedb {
  input {
    Boolean? dont_split_seq_by_len
    Boolean? dont_shuffle
    Boolean? id_offset
    Boolean? max_seq_len
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createdb \
      ~{true="--dont-split-seq-by-len" false="" dont_split_seq_by_len} \
      ~{true="--dont-shuffle" false="" dont_shuffle} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    dont_split_seq_by_len: "true            Dont split sequences by --max-seq-len                       "
    dont_shuffle: "true            Do not shuffle input database                               "
    id_offset: "0               numeric ids in index file are offset by this value          "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}