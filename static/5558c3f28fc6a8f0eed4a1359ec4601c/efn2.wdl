version 1.0

task Efn2 {
  input {
    String ct_file
    String output_file
  }
  command <<<
    efn2 \
      ~{ct_file} \
      ~{output_file}
  >>>
  parameter_meta {
    ct_file: ""
    output_file: ""
  }
}