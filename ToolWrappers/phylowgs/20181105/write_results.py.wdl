version 1.0

task WriteResultspy {
  input {
    Boolean? include_ssm_names
    Int? min_ssms
    String dataset_name
    String tree_file
    String tree_summary_output
    String mut_list_output
    String mut_ass_output
  }
  command <<<
    write_results_py \
      ~{dataset_name} \
      ~{tree_file} \
      ~{tree_summary_output} \
      ~{mut_list_output} \
      ~{mut_ass_output} \
      ~{if (include_ssm_names) then "--include-ssm-names" else ""} \
      ~{if defined(min_ssms) then ("--min-ssms " +  '"' + min_ssms + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include_ssm_names: "Include SSM names in output (which may be sensitive\\ndata) (default: False)"
    min_ssms: "Minimum number or percent of SSMs to retain a subclone\\n(default: 0.01)\\n"
    dataset_name: "Name identifying dataset"
    tree_file: "File containing sampled trees"
    tree_summary_output: "Output file for JSON-formatted tree summaries"
    mut_list_output: "Output file for JSON-formatted list of mutations"
    mut_ass_output: "Output file for JSON-formatted list of SSMs and CNVs\\nassigned to each subclone"
  }
  output {
    File out_stdout = stdout()
  }
}