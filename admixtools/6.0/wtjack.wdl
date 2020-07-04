version 1.0

task Wtjack.pl {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    wtjack.pl \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}