version 1.0

task BasenjiDataReadpy {
  input {
    String? set_blacklist_nucleotides
    String? clip_values_postsummary
    String? clip_soft
    Int? crop
    Boolean? interpolate_nans
    Float? scale_values_by
    String? summary_statistic_compute
    Int? average_pooling_width
    String genome_cov_file
    String seqs_bed_file
    String seqs_cov_file
  }
  command <<<
    basenji_data_read_py \
      ~{genome_cov_file} \
      ~{seqs_bed_file} \
      ~{seqs_cov_file} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(clip_values_postsummary) then ("-c " +  '"' + clip_values_postsummary + '"') else ""} \
      ~{if defined(clip_soft) then ("--clip_soft " +  '"' + clip_soft + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if (interpolate_nans) then "-i" else ""} \
      ~{if defined(scale_values_by) then ("-s " +  '"' + scale_values_by + '"') else ""} \
      ~{if defined(summary_statistic_compute) then ("-u " +  '"' + summary_statistic_compute + '"') else ""} \
      ~{if defined(average_pooling_width) then ("-w " +  '"' + average_pooling_width + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    clip_values_postsummary: "Clip values post-summary to a maximum [Default: none]"
    clip_soft: "Soft clip values, applying sqrt to the execess above\\nthe threshold [Default: none]"
    crop: "Crop bp off each end [Default: 0]"
    interpolate_nans: "Interpolate NaNs [Default: False]"
    scale_values_by: "Scale values by [Default: 1.0]"
    summary_statistic_compute: "Summary statistic to compute in windows [Default: sum]"
    average_pooling_width: "Average pooling width [Default: 1]"
    genome_cov_file: ""
    seqs_bed_file: ""
    seqs_cov_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}