version 1.0

task SkmerQuery {
  input {
    Boolean? add_processed_query
    String? output_distances_prefix
    String? base_error_rate
    Int? max_number_processors
    Boolean? t
  }
  command <<<
    skmer query \
      ~{if (add_processed_query) then "-a" else ""} \
      ~{if defined(output_distances_prefix) then ("-o " +  '"' + output_distances_prefix + '"') else ""} \
      ~{if defined(base_error_rate) then ("-e " +  '"' + base_error_rate + '"') else ""} \
      ~{if defined(max_number_processors) then ("-p " +  '"' + max_number_processors + '"') else ""} \
      ~{if (t) then "-t" else ""}
  >>>
  parameter_meta {
    add_processed_query: "Add the processed input (query) to the (reference) library"
    output_distances_prefix: "Output (distances) prefix. Default: dist"
    base_error_rate: "Base error rate. By default, the error rate is automatically"
    max_number_processors: "Max number of processors to use [1-8]. Default for this machine:\\n8\\n"
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}