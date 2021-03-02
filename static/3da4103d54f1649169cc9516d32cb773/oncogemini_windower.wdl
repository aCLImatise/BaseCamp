version 1.0

task OncogeminiWindower {
  input {
    Int? name_column_added
    String? type_windowed_requested
    String? operation_applied_t
    Int? s
    String table_dot
  }
  command <<<
    oncogemini windower \
      ~{table_dot} \
      ~{if defined(name_column_added) then ("-w " +  '"' + name_column_added + '"') else ""} \
      ~{if defined(type_windowed_requested) then ("-t " +  '"' + type_windowed_requested + '"') else ""} \
      ~{if defined(operation_applied_t) then ("-o " +  '"' + operation_applied_t + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    name_column_added: "The name of the column to be added to the variant"
    type_windowed_requested: "The type of windowed analysis requested."
    operation_applied_t: "The operation that should be applied to the -t values.\\n"
    s: ""
    table_dot: "-s STEP_SIZE          The step size for the windows in bp."
  }
  output {
    File out_stdout = stdout()
  }
}