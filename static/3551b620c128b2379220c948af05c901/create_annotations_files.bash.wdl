version 1.0

task CreateAnnotationsFilesbash {
  command <<<
    create_annotations_files_bash
  >>>
  output {
    File out_stdout = stdout()
  }
}