version 1.0

task AddScoreTagsToBam {
  input {
    Boolean? arg_value_substract
    Boolean? arg_issue_warning
    Boolean? output_reads_computed
    Boolean? arg_number_default
    String reference_dot_fast_a
  }
  command <<<
    add-score-tags-to-bam \
      ~{reference_dot_fast_a} \
      ~{true="-p" false="" arg_value_substract} \
      ~{true="-b" false="" arg_issue_warning} \
      ~{true="-s" false="" output_reads_computed} \
      ~{true="-T" false="" arg_number_default}
  >>>
  parameter_meta {
    arg_value_substract: "[ --phred_offset ] arg (=33)       Value to substract from ASCII code to  get the PHRED quality."
    arg_issue_warning: "[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this value."
    output_reads_computed: "[ --skip_unknown ]                 Do not output reads for which no AS tag could be computed, e.g. because the  reference sequence was unknown."
    arg_number_default: "[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly single-threaded)."
    reference_dot_fast_a: ""
  }
}