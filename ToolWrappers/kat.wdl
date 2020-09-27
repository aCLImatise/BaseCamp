version 1.0

task Kat {
  input {
    Boolean? print_extra_information
    String distributions_dot
  }
  command <<<
    kat \
      ~{distributions_dot} \
      ~{if (print_extra_information) then "-v" else ""}
  >>>
  parameter_meta {
    print_extra_information: "[ --verbose ]      Print extra information"
    distributions_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}