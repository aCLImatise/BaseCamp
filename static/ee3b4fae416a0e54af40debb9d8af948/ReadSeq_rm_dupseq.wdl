version 1.0

task ReadSeqRmDupseq {
  input {
    Boolean? duplicates
    Boolean? debug
    String? in_file
    String? min_seq_length
    String? outfile
    String rm_redundant_seqs
  }
  command <<<
    ReadSeq rm-dupseq \
      ~{rm_redundant_seqs} \
      ~{true="--duplicates" false="" duplicates} \
      ~{true="--debug" false="" debug} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(min_seq_length) then ("--min_seq_length " +  '"' + min_seq_length + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    duplicates: "remove identical sequence, or sequence contained by another sequence"
    debug: "output the ids that are contained by other sequences to standard out"
    in_file: "input fasta file"
    min_seq_length: "filter sequence by minimum sequence length, default is 0"
    outfile: "output fasta file"
    rm_redundant_seqs: ""
  }
}