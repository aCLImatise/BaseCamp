version 1.0

task PeakCenters {
  input {
    Boolean? options
    Boolean? more_options
  }
  command <<<
    peakCenters \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
  }
}