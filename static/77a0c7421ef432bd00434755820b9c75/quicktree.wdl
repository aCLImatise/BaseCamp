version 1.0

task Quicktree {
  input {
    Boolean? options
    String input_file
  }
  command <<<
    quicktree \
      ~{input_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    input_file: ""
  }
}