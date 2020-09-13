version 1.0

task Falcodiff {
  input {
    Boolean? outdir
    Boolean? skip_text
    Boolean? skip_html
    Boolean? skip_short_summary
    Boolean? verbose
    Boolean? about
    Int fast_qc_data_one_dot_txt
    Int fast_qc_data_two_dot_txt
  }
  command <<<
    falcodiff \
      ~{fast_qc_data_one_dot_txt} \
      ~{fast_qc_data_two_dot_txt} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (skip_text) then "--skip-text" else ""} \
      ~{if (skip_html) then "--skip-html" else ""} \
      ~{if (skip_short_summary) then "--skip-short-summary" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    outdir: "Create all output files in the specified\\noutput directory. If notprovided, files\\nwill be created in the same directory as\\nthe input file."
    skip_text: "Skip generating text file (Default = false)"
    skip_html: "Skip generating HTML file (Default = false)"
    skip_short_summary: "Skip short summary(Default = false)"
    verbose: "print more run info"
    about: "print about message"
    fast_qc_data_one_dot_txt: ""
    fast_qc_data_two_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}