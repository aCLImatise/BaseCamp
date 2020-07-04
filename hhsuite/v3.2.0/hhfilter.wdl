version 1.0

task Hhfilter {
  input {
    File? read_input_file
    File? write_output_file
    File? append_output_file
    Int? verbose_mode_screen
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? neff
    Int? max_seq
    Int? max_res
  }
  command <<<
    hhfilter \
      ~{if defined(read_input_file) then ("-i " +  '"' + read_input_file + '"') else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(append_output_file) then ("-a " +  '"' + append_output_file + '"') else ""} \
      ~{if defined(verbose_mode_screen) then ("-v " +  '"' + verbose_mode_screen + '"') else ""} \
      ~{true="-id" false="" id} \
      ~{true="-diff" false="" diff} \
      ~{true="-cov" false="" cov} \
      ~{true="-qid" false="" qid} \
      ~{true="-qsc" false="" qsc} \
      ~{true="-neff" false="" neff} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(max_res) then ("-maxres " +  '"' + max_res + '"') else ""}
  >>>
  parameter_meta {
    read_input_file: "read input file in A3M/A2M or FASTA format                 "
    write_output_file: "write to output file in A3M format                         "
    append_output_file: "append to output file in A3M format                        "
    verbose_mode_screen: "verbose mode: 0:no screen output  1:only warings  2: verbose"
    id: "[0,100]  maximum pairwise sequence identity (%) (def=90)   "
    diff: "[0,inf[  filter MSA by selecting most diverse set of sequences, keeping  at least this many seqs in each MSA block of length 50 (def=0) "
    cov: "[0,100]  minimum coverage with query (%) (def=0) "
    qid: "[0,100]  minimum sequence identity with query (%) (def=0) "
    qsc: "[0,100]  minimum score per column with query  (def=-20.0)"
    neff: "[1,inf]  target diversity of alignment (default=off)"
    max_seq: "max number of input rows (def=65535)"
    max_res: "max number of HMM columns (def=20001)"
  }
}