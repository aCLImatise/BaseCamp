version 1.0

task BasenjiDataHicReadpy {
  input {
    String? set_blacklist_nucleotides
    String? clip_values_postsummary
    Float? scale_values_by
    Boolean? soft
    String? summary_statistic_compute
    Int? average_pooling_width
    Boolean? as_obs_exp
    String genome_hic_file
    String seqs_bed_file
    String seqs_hic_file
  }
  command <<<
    basenji_data_hic_read_py \
      ~{genome_hic_file} \
      ~{seqs_bed_file} \
      ~{seqs_hic_file} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(clip_values_postsummary) then ("-c " +  '"' + clip_values_postsummary + '"') else ""} \
      ~{if defined(scale_values_by) then ("-s " +  '"' + scale_values_by + '"') else ""} \
      ~{if (soft) then "--soft" else ""} \
      ~{if defined(summary_statistic_compute) then ("-u " +  '"' + summary_statistic_compute + '"') else ""} \
      ~{if defined(average_pooling_width) then ("-w " +  '"' + average_pooling_width + '"') else ""} \
      ~{if (as_obs_exp) then "--as_obsexp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    clip_values_postsummary: "Clip values post-summary to a maximum [Default: none]"
    scale_values_by: "Scale values by [Default: 1.0]"
    soft: "Soft clip values, applying sqrt to the execess above the\\nthreshold [Default: False]"
    summary_statistic_compute: "Summary statistic to compute in windows [Default: sum]"
    average_pooling_width: "Average pooling width [Default: 1]"
    as_obs_exp: "save targets as obsexp profiles"
    genome_hic_file: ""
    seqs_bed_file: ""
    seqs_hic_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}