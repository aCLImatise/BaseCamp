version 1.0

task TreebestTrans {
  input {
    String nucl_alignment
  }
  command <<<
    treebest trans \
      ~{nucl_alignment}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nucl_alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}