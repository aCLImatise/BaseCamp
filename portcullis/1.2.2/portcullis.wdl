version 1.0

task Portcullis {
  input {
    Boolean? print_extra_information
    String mode
    String mode_args
  }
  command <<<
    portcullis \
      ~{mode} \
      ~{mode_args} \
      ~{true="-v" false="" print_extra_information}
  >>>
  parameter_meta {
    print_extra_information: "[ --verbose ]      Print extra information"
    mode: ""
    mode_args: ""
  }
}