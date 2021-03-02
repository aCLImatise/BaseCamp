version 1.0

task UniprotMapperrb {
  input {
    File? explicitly_named_output
    Int? id_column
    String? to_id
    String input_file_dot_txt
    String from_id_type
  }
  command <<<
    uniprot_mapper_rb \
      ~{input_file_dot_txt} \
      ~{from_id_type} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(id_column) then ("--id-column " +  '"' + id_column + '"') else ""} \
      ~{if defined(to_id) then ("--to-id " +  '"' + to_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    id_column: "Specify a column for ids (default is column 1)"
    to_id: "Specify an ID to output. Can be used multiple times."
    input_file_dot_txt: ""
    from_id_type: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}