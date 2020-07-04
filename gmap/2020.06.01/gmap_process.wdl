version 1.0

task GmapProcess {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    gmap_process \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}