version 1.0

task Addscoretagstobam {
  input {
    Boolean? arg_value_substract
    Boolean? arg_issue_warning
    Boolean? output_tagcould_computed
    Boolean? arg_number_threads
    String reference_dot_fast_a
  }
  command <<<
    add_score_tags_to_bam \
      ~{reference_dot_fast_a} \
      ~{if (arg_value_substract) then "-p" else ""} \
      ~{if (arg_issue_warning) then "-b" else ""} \
      ~{if (output_tagcould_computed) then "-s" else ""} \
      ~{if (arg_number_threads) then "-T" else ""}
  >>>
  parameter_meta {
    arg_value_substract: "[ --phred_offset ] arg (=33)       Value to substract from ASCII code to\\nget the PHRED quality."
    arg_issue_warning: "[ --bad_alignment_threshold ] arg (=1000)\\nIssue a warning when AS tag is above\\nthis value."
    output_tagcould_computed: "[ --skip_unknown ]                 Do not output reads for which no AS tag\\ncould be computed, e.g. because the\\nreference sequence was unknown."
    arg_number_threads: "[ --threads ] arg (=0)             Number of threads (default: 0 =\\nstrictly single-threaded).\\n"
    reference_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}