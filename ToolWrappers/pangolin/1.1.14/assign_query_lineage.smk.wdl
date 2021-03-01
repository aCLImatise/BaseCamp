version 1.0

task AssignQueryLineagesmk {
  command <<<
    assign_query_lineage_smk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}