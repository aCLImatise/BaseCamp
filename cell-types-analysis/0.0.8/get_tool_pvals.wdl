version 1.0

task GetToolPvals.R {
  input {
    String inputInputTable
    String empEmpDistList
    String outputOutputTable
  }
  command <<<
    get_tool_pvals.R \
      ~{if defined(inputInputTable) then ("--input-table " +  '"' + inputInputTable + '"') else ""} \
      ~{if defined(empEmpDistList) then ("--emp-dist-list " +  '"' + empEmpDistList + '"') else ""} \
      ~{if defined(outputOutputTable) then ("--output-table " +  '"' + outputOutputTable + '"') else ""}
  >>>
}