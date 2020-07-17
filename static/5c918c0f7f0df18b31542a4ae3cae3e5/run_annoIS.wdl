version 1.0

task RunAnnoIS.pl {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    run-annoIS.pl \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}