version 1.0

task BaseCallingMatrixMerger {
  input {
    String base_calling_matrix_merger_do_tpl
  }
  command <<<
    baseCalling_Matrix_merger \
      ~{base_calling_matrix_merger_do_tpl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_calling_matrix_merger_do_tpl: "Description"
  }
  output {
    File out_stdout = stdout()
  }
}