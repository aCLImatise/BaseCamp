version 1.0

task AssignQueryFilesmk {
  command <<<
    assign_query_file_smk
  >>>
  output {
    File out_stdout = stdout()
  }
}