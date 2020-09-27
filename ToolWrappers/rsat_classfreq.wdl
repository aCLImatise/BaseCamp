version 1.0

task RsatClassfreq {
  input {
    Boolean? help
    Boolean? verbose
    File? only_numbers_will
    File? specified_standard_output
    Boolean? ci
    Boolean? col
    Boolean? min
    Boolean? max
    Boolean? from
    Boolean? to
    Boolean? thr
    String class_freq
    String statistics
    String cum
    String d_cum
  }
  command <<<
    rsat classfreq \
      ~{class_freq} \
      ~{statistics} \
      ~{cum} \
      ~{d_cum} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(only_numbers_will) then ("-i " +  '"' + only_numbers_will + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (ci) then "-ci" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (from) then "-from" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (thr) then "-thr" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    only_numbers_will: "Only the numbers will be read, other words are ignored.\\nif not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    ci: "class interval. If not specified, takes the value\\n(max - min)/20\\nso that 21 classes are specified."
    col: "column to which apply the program. This option can\\nbe used iteratively."
    min: "#  nusmbers strictly smaller than # are not taken into account.\\n# also determines the lower limit of the first class."
    max: "#  numbers strictly greater than # are not taken into account."
    from: "# inferior limit for the classes to display\\nvalues lower than this limit are however taken into account\\nin the calculation of statistics (mean, variance, ...) and of\\nclass frequencies (In contrast with the -min option)."
    to: "#   superior limit for the classes to display\\nvalues higher than this limit are however taken into account\\nin the calculation of statistics (mean, variance, ...) and of\\nclass frequencies (In contrast with the -max option)."
    thr: "# threshold\\nOnly display classes with absolute frequency higher\\nthan or equal to the threshold. This option is useful\\nfor sparse data, where many classes do not contain any\\nobservation (-thr 1)."
    class_freq: "AUTHORS"
    statistics: "USAGE"
    cum: "is the count of (x <= upperlimit)"
    d_cum: "is the count of (x >= lowerlimit)"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}