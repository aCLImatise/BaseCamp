version 1.0

task RsatComparescores {
  input {
    Boolean? help
    Boolean? verbose
    File? use_recursively_indicate
    Boolean? files
    Boolean? file_list
    File? specified_standard_output
    File? format
    File? header
    Boolean? null
    Boolean? numeric
    Boolean? decreasing
    Boolean? basename
    Boolean? suppress
    Boolean? subst
    String compare_scores
    String util
  }
  command <<<
    rsat compare_scores \
      ~{compare_scores} \
      ~{util} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(use_recursively_indicate) then ("-i " +  '"' + use_recursively_indicate + '"') else ""} \
      ~{if (files) then "-files" else ""} \
      ~{if (file_list) then "-filelist" else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (null) then "-null" else ""} \
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (decreasing) then "-decreasing" else ""} \
      ~{if (basename) then "-basename" else ""} \
      ~{if (suppress) then "-suppress" else ""} \
      ~{if (subst) then "-subst" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    use_recursively_indicate: "(use recursively to indicate several input files)\\ninput file.\\nAt least 2 different input files must be specified.\\nThe input files each contain a table with several columns,\\nseparated by tabulations (      ).\\nThe first column of each input file contains the key."
    files: "list of files specified on the command line.\\nAll following arguments are considered as input file"
    file_list: "Specify a file containing the list of files to be compared.\\nThis is especially useful for long file lists of input files\\n(e.g. > 500 files)."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    format: "format (default: profiles)\\nSupported formats: classes,profiles\\nProfiles: tab-delimited file with one column per file, and one\\nrow per object to which a score was assigned.\\nClasses: 3-column tab-delimited files. The respective columns\\nindicate:\\n- object\\n- input file\\n- score"
    header: "the first line of each input file as column"
    null: "null string (default <NULL>) displayed when one\\nfile contains no value for a given key)"
    numeric: "sort IDs numerically rather than alphabetically"
    decreasing: "sort IDs numerically in a decreasing order"
    basename: "remove path (directory) from file names in the header"
    suppress: "Suppress a given substring from file names in the header\\nThis option can be used iteratively to suppress different\\nsubstrings.\\nExample:\\n-suppress '.tab' -suppress 'oligos_'\\nThe substring may contain a regular expression.\\nExample:\\n-suppress 'w+_'"
    subst: "Substitute a given substring from file names in the header\\nby a specified substring.\\nExample:\\n-subst 'oligo_' 'ol'"
    compare_scores: "1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    util: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}