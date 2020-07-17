version 1.0

task EufindtRNA {
  input {
    Boolean? options
    String sequence_file
  }
  command <<<
    eufindtRNA \
      ~{sequence_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    sequence_file: ""
  }
}