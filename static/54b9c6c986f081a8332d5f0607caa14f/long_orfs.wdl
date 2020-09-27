version 1.0

task Longorfs {
  input {
    File sequence_file
    File output_file
  }
  command <<<
    long_orfs \
      ~{sequence_file} \
      ~{output_file}
  >>>
  parameter_meta {
    sequence_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}