version 1.0

task Humann2ReduceTable {
  input {
    Boolean? verbose
    String? the_input_table
    String? the_output_table
    String? function
    String? sort_by
  }
  command <<<
    humann2_reduce_table \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(the_input_table) then ("--input " +  '"' + the_input_table + '"') else ""} \
      ~{if defined(the_output_table) then ("--output " +  '"' + the_output_table + '"') else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(sort_by) then ("--sort-by " +  '"' + sort_by + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "additional output is printed"
    the_input_table: "the input table"
    the_output_table: "the output table"
    function: "the function to apply"
    sort_by: "sort the output by the selection\\n"
  }
  output {
    File out_stdout = stdout()
  }
}