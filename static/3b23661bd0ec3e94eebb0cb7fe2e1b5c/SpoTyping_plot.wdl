version 1.0

task SpoTypingPlot.r {
  input {
    Boolean? options
    Boolean? more_options
    String xls_two_csv_do_tpl
  }
  command <<<
    SpoTyping_plot.r \
      ~{xls_two_csv_do_tpl} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
    xls_two_csv_do_tpl: ""
  }
}