version 1.0

task CreateAnnotationsFilesbash {
  command <<<
    create_annotations_files_bash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}