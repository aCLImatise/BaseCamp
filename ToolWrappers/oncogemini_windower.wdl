version 1.0

task OncogeminiWindower {
  input {
    Int? name_column_added
    String? type_windowed_analysis
    String? operation_should_applied
    Int? s
    String table_dot
  }
  command <<<
    oncogemini windower \
      ~{table_dot} \
      ~{if defined(name_column_added) then ("-w " +  '"' + name_column_added + '"') else ""} \
      ~{if defined(type_windowed_analysis) then ("-t " +  '"' + type_windowed_analysis + '"') else ""} \
      ~{if defined(operation_should_applied) then ("-o " +  '"' + operation_should_applied + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    name_column_added: "The name of the column to be added to the variant"
    type_windowed_analysis: "The type of windowed analysis requested."
    operation_should_applied: "The operation that should be applied to the -t values.\\n"
    s: ""
    table_dot: "-s STEP_SIZE          The step size for the windows in bp."
  }
  output {
    File out_stdout = stdout()
  }
}