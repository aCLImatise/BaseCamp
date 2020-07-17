version 1.0

task Sfold {
  input {
    Boolean? options
    String seq_file_one
    String seq_file_two
  }
  command <<<
    sfold \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file_one: ""
    seq_file_two: ""
  }
}