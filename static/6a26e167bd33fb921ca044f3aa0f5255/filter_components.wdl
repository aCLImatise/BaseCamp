version 1.0

task FilterComponents.py {
  input {
    String in_file
    String outfile
    Int minlength
  }
  command <<<
    filter_components.py \
      ~{in_file} \
      ~{outfile} \
      ~{minlength}
  >>>
  parameter_meta {
    in_file: ""
    outfile: ""
    minlength: ""
  }
}