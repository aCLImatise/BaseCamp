version 1.0

task KmerStream {
  input {
    Boolean? binary
    Boolean? tsv
    Boolean? verbose
    Boolean? online
    Boolean? q_six_four
  }
  command <<<
    KmerStream \
      ~{true="--binary" false="" binary} \
      ~{true="--tsv" false="" tsv} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--online" false="" online} \
      ~{true="--q64" false="" q_six_four}
  >>>
  parameter_meta {
    binary: "Output is written in binary format (default false)"
    tsv: "Output is written in TSV format (default false)"
    verbose: "Print lots of messages during run"
    online: "Prints out estimates every 100K reads"
    q_six_four: "set if PHRED+64 scores are used (@...h) default used PHRED+33"
  }
}