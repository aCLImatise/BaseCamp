version 1.0

task SsuAlign {
  input {
    Boolean? force_dir_named
    String? use_file_f
    String? set_bit_score
    String? set_minimum_length
    Boolean? output_alignments_interleaved
    String? only_search_align
    Boolean? dna
    Boolean? rf_only
    Boolean? no_align
    Boolean? no_search
    Boolean? top_only
    Boolean? forward
    Boolean? global
    Boolean? keep_int
    String? aln_one
    Boolean? no_trunc
    Boolean? no_prob
    String? mx_size
    Boolean? options
    String sequence_file
    String output_dir
  }
  command <<<
    ssu-align \
      ~{sequence_file} \
      ~{output_dir} \
      ~{true="-f" false="" force_dir_named} \
      ~{if defined(use_file_f) then ("-m " +  '"' + use_file_f + '"') else ""} \
      ~{if defined(set_bit_score) then ("-b " +  '"' + set_bit_score + '"') else ""} \
      ~{if defined(set_minimum_length) then ("-l " +  '"' + set_minimum_length + '"') else ""} \
      ~{true="-i" false="" output_alignments_interleaved} \
      ~{if defined(only_search_align) then ("-n " +  '"' + only_search_align + '"') else ""} \
      ~{true="--dna" false="" dna} \
      ~{true="--rfonly" false="" rf_only} \
      ~{true="--no-align" false="" no_align} \
      ~{true="--no-search" false="" no_search} \
      ~{true="--toponly" false="" top_only} \
      ~{true="--forward" false="" forward} \
      ~{true="--global" false="" global} \
      ~{true="--keep-int" false="" keep_int} \
      ~{if defined(aln_one) then ("--aln-one " +  '"' + aln_one + '"') else ""} \
      ~{true="--no-trunc" false="" no_trunc} \
      ~{true="--no-prob" false="" no_prob} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    force_dir_named: ": force; if dir named <output dir> already exists, empty it first"
    use_file_f: ": use CM file <f> instead of the default CM file"
    set_bit_score: ": set minimum bit score of a surviving subsequence as <x> [default: 50]"
    set_minimum_length: ": set minimum length    of a surviving subsequence as <n> [default: 1]"
    output_alignments_interleaved: ": output alignments in interleaved Stockholm format (not 1 line/seq)"
    only_search_align: ": only search with and align to single CM named <s> in CM file (default CM file includes 'archaea', 'bacteria', 'eukarya')"
    dna: ": output alignments as DNA, default is RNA (even if input is DNA)"
    rf_only: ": discard inserts, only keep consensus (nongap RF) columns in alignments (alignments will be fixed width but won't include all target nucleotides)"
    no_align: ": only search target sequence file for hits, skip alignment step"
    no_search: ": only align  target sequence file, skip initial search step"
    top_only: ": only search the top strand [default: search both strands]"
    forward: ": use the HMM forward algorithm for searching, not HMM viterbi"
    global: ": search with globally configured HMM [default: local]"
    keep_int: ": keep intermediate files which are normally removed"
    aln_one: ": only align best-matching sequences to the CM named <s> in CM file"
    no_trunc: ": do not truncate seqs to HMM predicted start/end, align full seqs"
    no_prob: ": do not append posterior probabilities to alignments"
    mx_size: ": increase mx size for cmalign to <f> Mb [default: 4096]"
    options: ""
    sequence_file: ""
    output_dir: ""
  }
}