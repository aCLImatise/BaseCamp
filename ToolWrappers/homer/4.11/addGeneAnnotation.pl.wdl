version 1.0

task AddGeneAnnotationpl {
  input {
    File data_file
    String organism
  }
  command <<<
    addGeneAnnotation_pl \
      ~{data_file} \
      ~{organism}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: ""
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}