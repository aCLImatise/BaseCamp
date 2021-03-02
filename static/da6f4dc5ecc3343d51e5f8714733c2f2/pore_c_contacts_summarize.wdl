version 1.0

task PoreCContactsSummarize {
  input {
    String? user_metadata
    String contact_table
    String read_summary_table
  }
  command <<<
    pore_c contacts summarize \
      ~{contact_table} \
      ~{read_summary_table} \
      ~{if defined(user_metadata) then ("--user-metadata " +  '"' + user_metadata + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    user_metadata: "Add additional user metadata to the summary table,\\nmust be a dictionary in json format"
    contact_table: ""
    read_summary_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}