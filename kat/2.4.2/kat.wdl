version 1.0

task Kat {
  input {
    Boolean? print_extra_information
  }
  command <<<
    kat \
      ~{true="-v" false="" print_extra_information}
  >>>
  parameter_meta {
    print_extra_information: "[ --verbose ]      Print extra information"
  }
}