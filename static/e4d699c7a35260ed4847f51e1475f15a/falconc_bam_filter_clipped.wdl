version 1.0

task FalconcBamfilterclipped {
  input {
    Boolean? help_syntax
    File? outputfn_string_required
    Boolean? inputfn_string_required
    Boolean? maxclipping_int_maximum
    Boolean? _endmargin_margin
    Boolean? verbose
    String base_pairs
    String count_dot
  }
  command <<<
    falconc bam_filter_clipped \
      ~{base_pairs} \
      ~{count_dot} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (outputfn_string_required) then "-o" else ""} \
      ~{if (inputfn_string_required) then "-i" else ""} \
      ~{if (maxclipping_int_maximum) then "-m" else ""} \
      ~{if (_endmargin_margin) then "-e" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    outputfn_string_required: "=, --output-fn=      string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    inputfn_string_required: "=, --input-fn=       string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'"
    maxclipping_int_maximum: "=, --max-clipping=   int     100       Maximum clipping on left or right of\\nquery, in basepairs"
    _endmargin_margin: "=, --end-margin=     int     25        Maximum margin on contig ends, in"
    verbose: "bool    false     Show each skipped alignment, and a"
    base_pairs: "-F=, --Flags-exclude=  string  \\\"0\\\"       Integer (0x ok) of flags to exclude,"
    count_dot: "-t, --tags-enrich      bool    false     Also enrich the tags. (See"
  }
  output {
    File out_stdout = stdout()
    File out_outputfn_string_required = "${in_outputfn_string_required}"
  }
}