version 1.0

task FalconcBamfilterclipped {
  input {
    Boolean? help_syntax
    File? _outputfn_string
    Boolean? _inputfn_string
    Boolean? _maxclipping_maximum
    Boolean? _endmargin_maximum
    Boolean? verbose
    String base_pairs
    String count_dot
  }
  command <<<
    falconc bam_filter_clipped \
      ~{base_pairs} \
      ~{count_dot} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_outputfn_string) then "-o" else ""} \
      ~{if (_inputfn_string) then "-i" else ""} \
      ~{if (_maxclipping_maximum) then "-m" else ""} \
      ~{if (_endmargin_maximum) then "-e" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _outputfn_string: "=, --output-fn=      string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    _inputfn_string: "=, --input-fn=       string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'"
    _maxclipping_maximum: "=, --max-clipping=   int     100       Maximum clipping on left or right of\\nquery, in basepairs"
    _endmargin_maximum: "=, --end-margin=     int     25        Maximum margin on contig ends, in"
    verbose: "bool    false     Show each skipped alignment, and a"
    base_pairs: "-F=, --Flags-exclude=  string  \\\"0\\\"       Integer (0x ok) of flags to exclude,"
    count_dot: "-t, --tags-enrich      bool    false     Also enrich the tags. (See"
  }
  output {
    File out_stdout = stdout()
    File out__outputfn_string = "${in__outputfn_string}"
  }
}