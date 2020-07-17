version 1.0

task BLASTN.py {
  input {
    String blastn_path
    String query_file
    String results_file
  }
  command <<<
    BLASTN.py \
      ~{blastn_path} \
      ~{query_file} \
      ~{results_file}
  >>>
  parameter_meta {
    blastn_path: ""
    query_file: ""
    results_file: ""
  }
}