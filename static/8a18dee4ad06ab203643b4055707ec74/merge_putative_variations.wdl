version 1.0

task Mergeputativevariations {
  input {
    Boolean? arg_minimal_weight
    Boolean? arg_minimum_length
    Boolean? sort_weight_default
    Boolean? arg_filter_file
    Boolean? arg_input_file
    File file_dot
  }
  command <<<
    merge_putative_variations \
      ~{file_dot} \
      ~{if (arg_minimal_weight) then "-m" else ""} \
      ~{if (arg_minimum_length) then "-l" else ""} \
      ~{if (sort_weight_default) then "-w" else ""} \
      ~{if (arg_filter_file) then "-f" else ""} \
      ~{if (arg_input_file) then "-I" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_minimal_weight: "[ --min_weight ] arg (=1) Minimal weight to be printed (default=1)."
    arg_minimum_length: "[ --min_length ] arg (=0) Minimum length."
    sort_weight_default: "[ --sort_by_weight ]      Sort by weight (default: by position)"
    arg_filter_file: "[ --filter ] arg          Filter file; only retain deletions in the given"
    arg_input_file: "[ --input_file ] arg      Input file with variants (equivalent to\\nspecifying input files as positional arguments).\\n"
    file_dot: "-a [ --all_from_filter ]     Output all variations in the given filter set."
  }
  output {
    File out_stdout = stdout()
  }
}