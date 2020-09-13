version 1.0

task Hhconsensus {
  input {
    File? query_alignment_am
    File? append_consensus_sequence
    File? o
    File? o_a_three_m
    File? o_a_two_m
    File? of_as
    Int? verbose_mode_output
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Int? max_seq
    Int? max_res
    Float one_zero_do_tone_one_zero_one_slash_five_six_zero_zero_two_nine
  }
  command <<<
    hhconsensus \
      ~{one_zero_do_tone_one_zero_one_slash_five_six_zero_zero_two_nine} \
      ~{if defined(query_alignment_am) then ("-i " +  '"' + query_alignment_am + '"') else ""} \
      ~{if defined(append_consensus_sequence) then ("-s " +  '"' + append_consensus_sequence + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(o_a_three_m) then ("-oa3m " +  '"' + o_a_three_m + '"') else ""} \
      ~{if defined(o_a_two_m) then ("-oa2m " +  '"' + o_a_two_m + '"') else ""} \
      ~{if defined(of_as) then ("-ofas " +  '"' + of_as + '"') else ""} \
      ~{if defined(verbose_mode_output) then ("-v " +  '"' + verbose_mode_output + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (diff) then "-diff" else ""} \
      ~{if (cov) then "-cov" else ""} \
      ~{if (qid) then "-qid" else ""} \
      ~{if (qsc) then "-qsc" else ""} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(max_res) then ("-maxres " +  '"' + max_res + '"') else ""}
  >>>
  parameter_meta {
    query_alignment_am: "query alignment (A2M, A3M, or FASTA), or query HMM"
    append_consensus_sequence: "append consensus sequence in FASTA (default=<infile.seq>)"
    o: "write alignment with consensus sequence in A3M"
    o_a_three_m: "same"
    o_a_two_m: "write alignment with consensus sequence in A2M"
    of_as: "write alignment with consensus sequence in FASTA"
    verbose_mode_output: "verbose mode: 0:no screen output  1:only warings  2: verbose"
    id: "[0,100] maximum pairwise sequence identity (%) (def=100)"
    diff: "[0,inf[ filter most diverse set of sequences, keeping at least this\\nmany sequences in each block of >50 columns (def=0)"
    cov: "[0,100] minimum coverage with query (%) (def=0)"
    qid: "[0,100] minimum sequence identity with query (%) (def=0)"
    qsc: "[0,100] minimum score per column with query  (def=-20.0)"
    max_seq: "max number of input rows (def=65535)"
    max_res: "max number of HMM columns (def=20001)"
    one_zero_do_tone_one_zero_one_slash_five_six_zero_zero_two_nine: "Usage: hhconsensus -i <file> [options]                           "
  }
  output {
    File out_stdout = stdout()
  }
}