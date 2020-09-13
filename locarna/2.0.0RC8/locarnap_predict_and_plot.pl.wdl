version 1.0

task Locarnappredictandplotpl {
  input {
    Boolean? man
    Boolean? var_1
    Boolean? dont_plot
    Boolean? show_sw
    Boolean? rev_compl
    Boolean? write_subseq
    String? output_format
    String _outputdird
  }
  command <<<
    locarnap_predict_and_plot_pl \
      ~{_outputdird} \
      ~{if (man) then "--man" else ""} \
      ~{if (var_1) then "--test" else ""} \
      ~{if (dont_plot) then "--dont-plot" else ""} \
      ~{if (show_sw) then "--show-sw" else ""} \
      ~{if (rev_compl) then "--revcompl" else ""} \
      ~{if (write_subseq) then "--write-subseq" else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  parameter_meta {
    man: "Full documentation"
    var_1: ""
    dont_plot: "Skip plotting, only output"
    show_sw: "Show the structure weight in the plot"
    rev_compl: "Draw for reverse complement (3'-5')"
    write_subseq: "Write the subsequence of fit"
    output_format: "Output format (f = pdf or png, def=pdf)"
    _outputdird: "--output-dir=d"
  }
  output {
    File out_stdout = stdout()
  }
}