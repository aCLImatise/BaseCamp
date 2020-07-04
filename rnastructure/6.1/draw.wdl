version 1.0

task Draw {
  input {
    String ct_file
    String output_file
  }
  command <<<
    draw \
      ~{ct_file} \
      ~{output_file}
  >>>
  parameter_meta {
    ct_file: ""
    output_file: ""
  }
}