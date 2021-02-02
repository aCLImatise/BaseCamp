version 1.0

task Oases {
  input {
    Boolean? citation
    Int? ins_length_two
    Int? ins_length_long
    Boolean? ins_length
    File? unused_reads
    File? amos_file
    String? alignments
    Int? cov_cut_off
    Int? min_pair_count
    Int? min_trans_lgth
    Float? paired_cut_off
    String? merge
    Float? edge_fraction_cut_off
    String? scaffolding
    Int? degree_cut_off
    Directory directory
    Directory directory_slash_transcripts_dot_fa
  }
  command <<<
    oases \
      ~{directory} \
      ~{directory_slash_transcripts_dot_fa} \
      ~{if (citation) then "--citation" else ""} \
      ~{if defined(ins_length_two) then ("-ins_length2 " +  '"' + ins_length_two + '"') else ""} \
      ~{if defined(ins_length_long) then ("-ins_length_long " +  '"' + ins_length_long + '"') else ""} \
      ~{if (ins_length) then "-ins_length" else ""} \
      ~{if defined(unused_reads) then ("-unused_reads " +  '"' + unused_reads + '"') else ""} \
      ~{if defined(amos_file) then ("-amos_file " +  '"' + amos_file + '"') else ""} \
      ~{if defined(alignments) then ("-alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(cov_cut_off) then ("-cov_cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(min_pair_count) then ("-min_pair_count " +  '"' + min_pair_count + '"') else ""} \
      ~{if defined(min_trans_lgth) then ("-min_trans_lgth " +  '"' + min_trans_lgth + '"') else ""} \
      ~{if defined(paired_cut_off) then ("-paired_cutoff " +  '"' + paired_cut_off + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(edge_fraction_cut_off) then ("-edgeFractionCutoff " +  '"' + edge_fraction_cut_off + '"') else ""} \
      ~{if defined(scaffolding) then ("-scaffolding " +  '"' + scaffolding + '"') else ""} \
      ~{if defined(degree_cut_off) then ("-degree_cutoff " +  '"' + degree_cut_off + '"') else ""}
  >>>
  parameter_meta {
    citation: ": print citation to Oases manuscript and exit"
    ins_length_two: ": expected distance between two paired-end reads in the second short-read dataset (default: no read pairing)"
    ins_length_long: ": expected distance between two long paired-end reads (default: no read pairing)"
    ins_length: "*_sd <integer>       : est. standard deviation of respective dataset (default: 10% of corresponding length)\\n[replace '*' by nothing, '2' or '_long' as necessary]"
    unused_reads: ": export unused reads in UnusedReads.fa file (default: no)"
    amos_file: ": export assembly to AMOS file (default: no export)"
    alignments: ": export a summary of contig alignment to the reference sequences (default: no)"
    cov_cut_off: ": removal of low coverage nodes AFTER tour bus or allow the system to infer it (default: 3)"
    min_pair_count: ": minimum number of paired end connections to justify the scaffolding of two long contigs (default: 4)"
    min_trans_lgth: ": Minimum length of output transcripts (default: hash-length)"
    paired_cut_off: ": minimum ratio allowed between the numbers of observed and estimated connecting read pairs\\nMust be part of the open interval ]0,1[ (default: 0.1)"
    merge: ":Preserve contigs mapping onto long sequences to be preserved from coverage cutoff (default: no)"
    edge_fraction_cut_off: ": Remove edges which represent less than that fraction of a nodes outgoing flow\\nMust be part of the open interval ]0,1[ (default: 0.01)"
    scaffolding: ": Allow gaps in transcripts (default: no)"
    degree_cut_off: ": Maximum allowed degree on either end of a contigg to consider it 'unique' (default: 3)"
    directory: ": working directory name"
    directory_slash_transcripts_dot_fa: "directory/contig-ordering.txt"
  }
  output {
    File out_stdout = stdout()
  }
}