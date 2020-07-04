version 1.0

task Haplotyper.pl {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    haplotyper.pl \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}