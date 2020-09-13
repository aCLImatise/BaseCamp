version 1.0

task Ssualign {
  input {
    Boolean? force_dir_named
    File? use_cm_file
    Int? set_bit_score
    Int? set_minimum_length
    Boolean? output_alignments_interleaved
    File? only_search_align
    Boolean? dna
    Boolean? rf_only
    Boolean? no_align
    Boolean? no_search
    Boolean? top_only
    Boolean? forward
    Boolean? global
    Boolean? keep_int
    File? aln_one
    Boolean? no_trunc
    Boolean? no_prob
    Int? mx_size
    Boolean? options
    File sequence_file
    String output_dir
  }
  command <<<
    ssu_align \
      ~{sequence_file} \
      ~{output_dir} \
      ~{if (force_dir_named) then "-f" else ""} \
      ~{if defined(use_cm_file) then ("-m " +  '"' + use_cm_file + '"') else ""} \
      ~{if defined(set_bit_score) then ("-b " +  '"' + set_bit_score + '"') else ""} \
      ~{if defined(set_minimum_length) then ("-l " +  '"' + set_minimum_length + '"') else ""} \
      ~{if (output_alignments_interleaved) then "-i" else ""} \
      ~{if defined(only_search_align) then ("-n " +  '"' + only_search_align + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rf_only) then "--rfonly" else ""} \
      ~{if (no_align) then "--no-align" else ""} \
      ~{if (no_search) then "--no-search" else ""} \
      ~{if (top_only) then "--toponly" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if (keep_int) then "--keep-int" else ""} \
      ~{if defined(aln_one) then ("--aln-one " +  '"' + aln_one + '"') else ""} \
      ~{if (no_trunc) then "--no-trunc" else ""} \
      ~{if (no_prob) then "--no-prob" else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    force_dir_named: ": force; if dir named <output dir> already exists, empty it first"
    use_cm_file: ": use CM file <f> instead of the default CM file"
    set_bit_score: ": set minimum bit score of a surviving subsequence as <x> [default: 50]"
    set_minimum_length: ": set minimum length    of a surviving subsequence as <n> [default: 1]"
    output_alignments_interleaved: ": output alignments in interleaved Stockholm format (not 1 line/seq)"
    only_search_align: ": only search with and align to single CM named <s> in CM file\\n(default CM file includes 'archaea', 'bacteria', 'eukarya')"
    dna: ": output alignments as DNA, default is RNA (even if input is DNA)"
    rf_only: ": discard inserts, only keep consensus (nongap RF) columns in alignments\\n(alignments will be fixed width but won't include all target nucleotides)"
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
  output {
    File out_stdout = stdout()
  }
}