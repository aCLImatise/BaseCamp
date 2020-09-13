version 1.0

task Pysswpy {
  input {
    File? subject
    File? query
    File? q_type
    Int? match
    Int? mismatch
    Int? gap_open
    Int? gap_extend
    Int? min_score
    Int? min_len
    Boolean? reverse
    Boolean? unaligned
  }
  command <<<
    pyssw_py \
      ~{if defined(subject) then ("--subject " +  '"' + subject + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(q_type) then ("--qtype " +  '"' + q_type + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap_open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap_extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (unaligned) then "--unaligned" else ""}
  >>>
  parameter_meta {
    subject: "Path of the fasta file containing the subject genome\\nsequence. Can be gziped. [REQUIRED]"
    query: "Path of the fastq or fasta file containing the short\\nread to be aligned. Can be gziped. [REQUIRED]"
    q_type: "Type of the query file = fastq or fasta. [default:\\nfastq]"
    match: "Positive integer for weight match in genome sequence\\nalignment. [default: 2]"
    mismatch: "Positive integer. The negative value will be used as\\nweight mismatch in genome sequence alignment.\\n[default: 2]"
    gap_open: "Positive integer. The negative value will be used as\\nweight for the gap opening. [default: 3]"
    gap_extend: "Positive integer. The negative value will be used as\\nweight for the gap opening. [default: 1]"
    min_score: "Integer. Consider alignments having a score <= as not\\naligned. [default: 0]"
    min_len: "Integer. Consider alignments having a length <= as not\\naligned. [default: 0]"
    reverse: "Flag. Align query in forward and reverse orientation\\nand choose the best alignment. [Set by default]"
    unaligned: "Flag. Write unaligned reads in sam output [Unset by\\ndefault]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}