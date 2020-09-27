version 1.0

task Locarnappredictandplotpl {
  input {
    Boolean? man
    Boolean? test
    Directory? output_dir
    Boolean? dont_plot
    Boolean? show_sw
    Boolean? rev_compl
    Boolean? write_subseq
    String? output_format
  }
  command <<<
    locarnap_predict_and_plot_pl \
      ~{if (man) then "--man" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (dont_plot) then "--dont-plot" else ""} \
      ~{if (show_sw) then "--show-sw" else ""} \
      ~{if (rev_compl) then "--revcompl" else ""} \
      ~{if (write_subseq) then "--write-subseq" else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  parameter_meta {
    man: "Full documentation"
    test: "Test"
    output_dir: "Output directory (def=Relplots)"
    dont_plot: "Skip plotting, only output"
    show_sw: "Show the structure weight in the plot"
    rev_compl: "Draw for reverse complement (3'-5')"
    write_subseq: "Write the subsequence of fit"
    output_format: "Output format (f = pdf or png, def=pdf)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}