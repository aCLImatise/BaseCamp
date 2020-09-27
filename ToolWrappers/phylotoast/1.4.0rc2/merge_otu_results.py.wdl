version 1.0

task MergeOtuResultspy {
  input {
    Boolean? v
    String? o
    String pick_otus_results
  }
  command <<<
    merge_otu_results_py \
      ~{pick_otus_results} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    o: ""
    pick_otus_results: "The result files from multiple runs of a pick otus\\nscript that need to be merged."
  }
  output {
    File out_stdout = stdout()
  }
}