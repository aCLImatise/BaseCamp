version 1.0

task FrameBotIndex {
  input {
    Int? gap_ext_penalty
    Int? frameshift_penalty
    Int? gap_open_penalty
    Int? max_radius
    Int? transl_table
    Int? scoring_matrix
    String frame_bot_index
    File nucl_seed_file
    File out_index_file
  }
  command <<<
    FrameBot index \
      ~{frame_bot_index} \
      ~{nucl_seed_file} \
      ~{out_index_file} \
      ~{if defined(gap_ext_penalty) then ("--gap-ext-penalty " +  '"' + gap_ext_penalty + '"') else ""} \
      ~{if defined(frameshift_penalty) then ("--frameshift-penalty " +  '"' + frameshift_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("--gap-open-penalty " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(max_radius) then ("--max-radius " +  '"' + max_radius + '"') else ""} \
      ~{if defined(transl_table) then ("--transl-table " +  '"' + transl_table + '"') else ""} \
      ~{if defined(scoring_matrix) then ("--scoring-matrix " +  '"' + scoring_matrix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_ext_penalty: "gap extension penalty. Default is -4"
    frameshift_penalty: "frameshift penalty. Default is -10"
    gap_open_penalty: "gap opening penalty. Default is -13"
    max_radius: "maximum radius for metric-search ONLY, range [1-2147483647]>, default is\\nInteger.MAX_VALUE: 2147483647"
    transl_table: "Protein translation table to use (integer based on ncbi's translation tables,\\ndefault=11 bacteria/archaea)"
    scoring_matrix: "the metric protein scoring matrix. Default is blosum62_metric.txt from Weijia Xu's\\nthesis: On Integrating Biological Sequence Analysis with Metric Distance"
    frame_bot_index: ""
    nucl_seed_file: ""
    out_index_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_index_file = "${in_out_index_file}"
  }
}