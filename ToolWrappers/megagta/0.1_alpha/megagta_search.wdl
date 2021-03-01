version 1.0

task MegagtaSearch {
  input {
    String search
    String succinct_dbg
    String gene_list
    String starting_km_ers_prefix
    String output_prefix
    String prune_len
    String low_cov_penalty
  }
  command <<<
    megagta search \
      ~{search} \
      ~{succinct_dbg} \
      ~{gene_list} \
      ~{starting_km_ers_prefix} \
      ~{output_prefix} \
      ~{prune_len} \
      ~{low_cov_penalty}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    search: ""
    succinct_dbg: ""
    gene_list: ""
    starting_km_ers_prefix: ""
    output_prefix: ""
    prune_len: ""
    low_cov_penalty: ""
  }
  output {
    File out_stdout = stdout()
  }
}