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
      ~{if (dont_split_seq_by_len) then "--dont-split-seq-by-len" else ""} \
      ~{if (dont_shuffle) then "--dont-shuffle" else ""} \
      ~{if (id_offset) then "--id-offset" else ""} \
      ~{if (max_seq_len) then "--max-seq-len" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dont_split_seq_by_len: "true            Dont split sequences by --max-seq-len"
    dont_shuffle: "true            Do not shuffle input database"
    id_offset: "0               numeric ids in index file are offset by this value"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}