version 1.0

task Meraculous4h.pl {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    meraculous4h.pl \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}