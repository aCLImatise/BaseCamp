version 1.0

task PizzlyFlattenJsonpy {
  input {
    String python
    String flatten_json_do_tpy
    String fusion_dot_out_dot_json
    String? gene_table_dot_txt
  }
  command <<<
    pizzly_flatten_json_py \
      ~{python} \
      ~{flatten_json_do_tpy} \
      ~{fusion_dot_out_dot_json} \
      ~{gene_table_dot_txt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    python: ""
    flatten_json_do_tpy: ""
    fusion_dot_out_dot_json: ""
    gene_table_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}