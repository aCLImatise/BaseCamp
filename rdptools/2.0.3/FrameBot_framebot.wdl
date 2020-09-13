version 1.0

task FrameBotFramebot {
  input {
    String? alignment_mode
    Int? de_novo_abund_cut_off
    Float? de_novo_id_cut_off
    Int? gap_ext_penalty
    Int? frameshift_penalty
    Int? gap_open_penalty
    Float? identity_cut_off
    Int? knn
    Int? length_cut_off
    Int? max_radius
    Boolean? no_metric_search
    File? result_stem
    File? quality_file
    Int? transl_table
    Int? word_size
    Int? scoring_matrix
    Boolean? de_novo
    String frame_bot_main
    File seed_or_index_file
    File query_file
  }
  command <<<
    FrameBot framebot \
      ~{frame_bot_main} \
      ~{seed_or_index_file} \
      ~{query_file} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(de_novo_abund_cut_off) then ("--denovo-abund-cutoff " +  '"' + de_novo_abund_cut_off + '"') else ""} \
      ~{if defined(de_novo_id_cut_off) then ("--denovo-id-cutoff " +  '"' + de_novo_id_cut_off + '"') else ""} \
      ~{if defined(gap_ext_penalty) then ("--gap-ext-penalty " +  '"' + gap_ext_penalty + '"') else ""} \
      ~{if defined(frameshift_penalty) then ("--frameshift-penalty " +  '"' + frameshift_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("--gap-open-penalty " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(identity_cut_off) then ("--identity-cutoff " +  '"' + identity_cut_off + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if defined(length_cut_off) then ("--length-cutoff " +  '"' + length_cut_off + '"') else ""} \
      ~{if defined(max_radius) then ("--max-radius " +  '"' + max_radius + '"') else ""} \
      ~{if (no_metric_search) then "--no-metric-search" else ""} \
      ~{if defined(result_stem) then ("--result-stem " +  '"' + result_stem + '"') else ""} \
      ~{if defined(quality_file) then ("--quality-file " +  '"' + quality_file + '"') else ""} \
      ~{if defined(transl_table) then ("--transl-table " +  '"' + transl_table + '"') else ""} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""} \
      ~{if defined(scoring_matrix) then ("--scoring-matrix " +  '"' + scoring_matrix + '"') else ""} \
      ~{if (de_novo) then "--de-novo" else ""}
  >>>
  parameter_meta {
    alignment_mode: "Alignment mode: glocal, local or global (default = glocal)"
    de_novo_abund_cut_off: "minimum abundance for de-novo mode. default = 10"
    de_novo_id_cut_off: "maxmimum aa identity cutoff for query to be added to refset for de-novo mode. default\\n= 0.7"
    gap_ext_penalty: "gap extension penalty for no-metric-search ONLY. Default is -1"
    frameshift_penalty: "frameshift penalty for no-metric-search ONLY. Default is -10"
    gap_open_penalty: "gap opening penalty for no-metric-search ONLY. Default is -10"
    identity_cut_off: "Percent identity cutoff [0-1] (default = .4)"
    knn: "The top k closest targets from kmer prefilter step. Set k=0 to disable this step.\\n(default = 10)"
    length_cut_off: "Length cutoff in number of amino acids (default = 80)"
    max_radius: "maximum radius for metric-search ONLY, range [1-2147483647], default uses the\\nmaxRadius specified in the index file"
    no_metric_search: "Disable metric search (provide fasta file of seeds instead of index file)"
    result_stem: "Result file name stem (default=stem of query nucl file)"
    quality_file: "Sequence quality data"
    transl_table: "Protein translation table to use (integer based on ncbi's translation tables,\\ndefault=11 bacteria/archaea)"
    word_size: "The word size used to find closest protein targets. (default = 4, recommended range [3\\n- 6])"
    scoring_matrix: "the protein scoring matrix for no-metric-search ONLY. Default is Blosum62"
    de_novo: "Enable de novo mode to add abundant query seqs to refset. Only works for\\nno-metric-search"
    frame_bot_main: ""
    seed_or_index_file: ""
    query_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}