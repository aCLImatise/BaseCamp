version 1.0

task Soap2sam.pl {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    soap2sam.pl \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}