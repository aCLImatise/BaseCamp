version 1.0

task UpdateSeqNAnnotationFieldspl {
  command <<<
    update_seq_n_annotation_fields_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}