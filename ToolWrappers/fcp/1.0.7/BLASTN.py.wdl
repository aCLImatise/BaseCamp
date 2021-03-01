version 1.0

task BLASTNpy {
  input {
    File blastn_path
    File query_file
    File results_file
  }
  command <<<
    BLASTN_py \
      ~{blastn_path} \
      ~{query_file} \
      ~{results_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blastn_path: ""
    query_file: ""
    results_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}