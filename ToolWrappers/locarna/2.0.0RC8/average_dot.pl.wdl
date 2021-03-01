version 1.0

task Averagedotpl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? quiet
    File? alignment
    File? sequences
    File? outfile
    Float? given_threshold_option
    String a
    String be
    String full
    String highlighted
    String var_output
    String pp
    String copy
    String each
    File var_file
    String files
    String that
    String for
    String given
    String have
    String of
    String representing
    String in
    String the
    String var_25
    String var_input
    String orginal
    String average
    String dot_plots
    String is
    String plot
    String created
    String probability
    String where
    String above
    String dots
  }
  command <<<
    average_dot_pl \
      ~{a} \
      ~{be} \
      ~{full} \
      ~{highlighted} \
      ~{var_output} \
      ~{pp} \
      ~{copy} \
      ~{each} \
      ~{var_file} \
      ~{files} \
      ~{that} \
      ~{for} \
      ~{given} \
      ~{have} \
      ~{of} \
      ~{representing} \
      ~{in} \
      ~{the} \
      ~{var_25} \
      ~{var_input} \
      ~{orginal} \
      ~{average} \
      ~{dot_plots} \
      ~{is} \
      ~{plot} \
      ~{created} \
      ~{probability} \
      ~{where} \
      ~{above} \
      ~{dots} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(given_threshold_option) then ("--threshold " +  '"' + given_threshold_option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "full documentation"
    verbose: "be verbose"
    quiet: "be quiet"
    alignment: "pp file representing the (Lo)Carna alignment"
    sequences: "pp files for the input sequences"
    outfile: "output file (DEFAULT: averagedot)"
    given_threshold_option: "for each given threshold (this option can be specified more than once)\\na copy of the orginal dotplots is created where the dots are\\nhighlighted that have in the average plot a probability above the\\nthreshold.\\n"
    a: ""
    be: ""
    full: ""
    highlighted: ""
    var_output: ""
    pp: ""
    copy: ""
    each: ""
    var_file: ""
    files: ""
    that: ""
    for: ""
    given: ""
    have: ""
    of: ""
    representing: ""
    in: ""
    the: ""
    var_25: ""
    var_input: ""
    orginal: ""
    average: ""
    dot_plots: ""
    is: ""
    plot: ""
    created: ""
    probability: ""
    where: ""
    above: ""
    dots: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}