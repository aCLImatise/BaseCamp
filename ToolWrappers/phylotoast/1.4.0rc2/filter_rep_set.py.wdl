version 1.0

task FilterRepSetpy {
  input {
    String? rep_set_fn
    File? unique_otus_fn
    String? output_filtered_rep_set_fn
  }
  command <<<
    filter_rep_set_py \
      ~{if defined(rep_set_fn) then ("--rep_set_fn " +  '"' + rep_set_fn + '"') else ""} \
      ~{if defined(unique_otus_fn) then ("--unique_otus_fn " +  '"' + unique_otus_fn + '"') else ""} \
      ~{if defined(output_filtered_rep_set_fn) then ("--output_filtered_rep_set_fn " +  '"' + output_filtered_rep_set_fn + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rep_set_fn: "The set of representative sequences."
    unique_otus_fn: "The condensed assigned taxonomy file."
    output_filtered_rep_set_fn: "The filtered representative set. By default outputs to\\ncondensed_rep_set.fna"
  }
  output {
    File out_stdout = stdout()
  }
}