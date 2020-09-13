version 1.0

task SpoTypingPlotr {
  input {
    Boolean? more_options
    Boolean? options
    String nobs
    Int object_dot_size
    String starts_with
  }
  command <<<
    SpoTyping_plot_r \
      ~{nobs} \
      ~{object_dot_size} \
      ~{starts_with} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
    nobs: "The following object is masked from 'package:utils':"
    object_dot_size: "The following object is masked from 'package:base':"
    starts_with: "/usr/local/lib/R/library/gdata/perl/xls2csv.pl version [unknown] calling Getopt::Std::getopts (version 1.12 [paranoid]),"
  }
  output {
    File out_stdout = stdout()
  }
}