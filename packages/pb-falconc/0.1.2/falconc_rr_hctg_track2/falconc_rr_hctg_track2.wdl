version 1.0

task FalconcRrhctgtrack2 {
  input {
    Boolean? help_syntax
    Boolean? test
    Boolean? _readtocontigmap_string
    Boolean? _output_string
    Boolean? _bestn_int
    Boolean? _ncore_int
    Boolean? _string_set
    Boolean? _minlen_int
    Boolean? stream
    Boolean? debug
    Boolean? silent
    String cli_gen_erated
    String ig_map
    String _rawreadids_string
  }
  command <<<
    falconc rr_hctg_track2 \
      ~{cli_gen_erated} \
      ~{ig_map} \
      ~{_rawreadids_string} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (_readtocontigmap_string) then "-r" else ""} \
      ~{if (_output_string) then "-o" else ""} \
      ~{if (_bestn_int) then "-b" else ""} \
      ~{if (_ncore_int) then "-n" else ""} \
      ~{if (_string_set) then "--phased-read-file" else ""} \
      ~{if (_minlen_int) then "-m" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced:prepen\\nd,plurals,.."
    test: "bool    false                                        set test"
    _readtocontigmap_string: "=, --read-to-contig-map=  string  \\\"./4-quiver/track_reads/read_to_contig_map\\\"  setread_to_cont"
    _output_string: "=, --output=              string  \\\"./4-quiver/track-reads/rawread_to_contigs\\\"  set output"
    _bestn_int: "=, --bestn=               int     40                                           set bestn"
    _ncore_int: "=, --n-core=              int     0                                            set n_core"
    _string_set: "=         string  \\\"\\\"                                           set"
    _minlen_int: "=, --min-len=             int     2500                                         set min_len"
    stream: "bool    false                                        set stream"
    debug: "bool    false                                        set debug"
    silent: "bool    false                                        set silent"
    cli_gen_erated: "help"
    ig_map: "-p=, --partials-fn=         string  \\\"./4-quiver/track-reads/partials.json\\\"       set partials_fn"
    _rawreadids_string: "--rawread-ids=              string  \\\"\\\"                                           set rawread_ids"
  }
  output {
    File out_stdout = stdout()
  }
}