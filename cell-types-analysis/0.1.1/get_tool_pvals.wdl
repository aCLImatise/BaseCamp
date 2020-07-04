version 1.0

task GetToolPvals.R {
  input {
    String? input_table
    String? emp_dist_list
    String? output_table
  }
  command <<<
    get_tool_pvals.R \
      ~{if defined(input_table) then ("--input-table " +  '"' + input_table + '"') else ""} \
      ~{if defined(emp_dist_list) then ("--emp-dist-list " +  '"' + emp_dist_list + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""}
  >>>
  parameter_meta {
    input_table: "Path to the table of tool statistics from get_tool_performance_table.R"
    emp_dist_list: "Path to the list of empirical distributions in .rds format"
    output_table: "Path to the modified output table in text format"
  }
}