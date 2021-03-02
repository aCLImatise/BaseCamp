version 1.0

task ReadSeqRmdupseq {
  input {
    Boolean? duplicates
    Boolean? debug
    File? in_file
    Int? min_seq_length
    File? outfile
    String rm_redundant_seqs
  }
  command <<<
    ReadSeq rm_dupseq \
      ~{rm_redundant_seqs} \
      ~{if (duplicates) then "--duplicates" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(min_seq_length) then ("--min_seq_length " +  '"' + min_seq_length + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    duplicates: "remove identical sequence, or sequence contained by another sequence"
    debug: "output the ids that are contained by other sequences to standard out"
    in_file: "input fasta file"
    min_seq_length: "filter sequence by minimum sequence length, default is 0"
    outfile: "output fasta file"
    rm_redundant_seqs: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}