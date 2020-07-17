version 1.0

task AddGeneAnnotation.pl {
  input {
    String data_file
    String organism
  }
  command <<<
    addGeneAnnotation.pl \
      ~{data_file} \
      ~{organism}
  >>>
  parameter_meta {
    data_file: ""
    organism: ""
  }
}