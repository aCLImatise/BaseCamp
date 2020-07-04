version 1.0

task GcCoverageBiasPlot {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    gc_coverage_bias_plot \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}