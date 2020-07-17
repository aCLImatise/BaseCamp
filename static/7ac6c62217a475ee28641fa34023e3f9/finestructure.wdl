version 1.0

task Finestructure {
  input {
    String data_file
    String initial_popfile
    String output_file
  }
  command <<<
    finestructure \
      ~{data_file} \
      ~{initial_popfile} \
      ~{output_file}
  >>>
  parameter_meta {
    data_file: ""
    initial_popfile: ""
    output_file: ""
  }
}