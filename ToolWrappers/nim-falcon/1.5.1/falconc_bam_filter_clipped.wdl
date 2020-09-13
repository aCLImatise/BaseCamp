version 1.0

task FalconcBamfilterclipped {
  input {
    Boolean? help_syntax
    Boolean? _outputcountfn_string
    Boolean? output_fn
    Boolean? _inputfn_string
    Boolean? _maxclipping_int
    Boolean? _endmargin_int
    String base_pairs
    String filters
    String count_dot
  }
  command <<<
    falconc bam_filter_clipped \
      ~{base_pairs} \
      ~{filters} \
      ~{count_dot} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_outputcountfn_string) then "-o" else ""} \
      ~{if (output_fn) then "--output-fn" else ""} \
      ~{if (_inputfn_string) then "-i" else ""} \
      ~{if (_maxclipping_int) then "-m" else ""} \
      ~{if (_endmargin_int) then "-e" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _outputcountfn_string: "=, --output-count-fn=  string  REQUIRED  file reporting the number of reads\\npost filtering"
    output_fn: "=             string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    _inputfn_string: "=, --input-fn=         string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'"
    _maxclipping_int: "=, --max-clipping=     int     100       Maximum clipping on left or right\\nof query, in basepairs"
    _endmargin_int: "=, --end-margin=       int     25        Maximum margin on contig ends, in"
    base_pairs: "-F=, --Flags-exclude=    string  \\\"0\\\"       Integer (0x ok) of flags to"
    filters: "-v, --verbose            bool    false     Show each skipped alignment, and a"
    count_dot: "-t, --tags-enrich        bool    false     Also enrich the tags. (See"
  }
  output {
    File out_stdout = stdout()
  }
}