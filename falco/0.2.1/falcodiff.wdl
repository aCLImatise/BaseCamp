version 1.0

task Falcodiff {
  input {
    Boolean? outdir
    Boolean? skip_text
    Boolean? skip_html
    Boolean? skip_short_summary
    Boolean? verbose
    Boolean? about
    String fast_qc_data_one_dot_txt
    String fast_qc_data_two_dot_txt
  }
  command <<<
    falcodiff \
      ~{fast_qc_data_one_dot_txt} \
      ~{fast_qc_data_two_dot_txt} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--skip-text" false="" skip_text} \
      ~{true="--skip-html" false="" skip_html} \
      ~{true="--skip-short-summary" false="" skip_short_summary} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    outdir: "Create all output files in the specified  output directory. If notprovided, files  will be created in the same directory as  the input file. "
    skip_text: "Skip generating text file (Default = false) "
    skip_html: "Skip generating HTML file (Default = false) "
    skip_short_summary: "Skip short summary(Default = false) "
    verbose: "print more run info "
    about: "print about message "
    fast_qc_data_one_dot_txt: ""
    fast_qc_data_two_dot_txt: ""
  }
}