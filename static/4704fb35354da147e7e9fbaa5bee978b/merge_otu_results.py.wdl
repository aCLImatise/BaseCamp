version 1.0

task MergeOtuResultspy {
  input {
    File? output_fn
    Boolean? v
    String pick_otus_results
  }
  command <<<
    merge_otu_results_py \
      ~{pick_otus_results} \
      ~{if defined(output_fn) then ("--output_fn " +  '"' + output_fn + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_fn: "The name of the file the merged results will be\\nwritten to."
    v: ""
    pick_otus_results: "The result files from multiple runs of a pick otus\\nscript that need to be merged."
  }
  output {
    File out_stdout = stdout()
  }
}