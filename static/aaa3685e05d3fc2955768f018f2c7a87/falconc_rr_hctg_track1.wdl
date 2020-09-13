version 1.0

task FalconcRrhctgtrack1 {
  input {
    Boolean? help_syntax
    Boolean? test
    Boolean? _phasedreadfile_string
    Boolean? _bestn_int
    Boolean? _ncore_int
    Boolean? _minlen_int
    Boolean? _output_string
    Boolean? stream
    Boolean? debug
    Boolean? silent
    String cli_gen_erated
    String phased_read_file
    String ig_map
  }
  command <<<
    falconc rr_hctg_track1 \
      ~{cli_gen_erated} \
      ~{phased_read_file} \
      ~{ig_map} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (_phasedreadfile_string) then "-p" else ""} \
      ~{if (_bestn_int) then "-b" else ""} \
      ~{if (_ncore_int) then "-n" else ""} \
      ~{if (_minlen_int) then "-m" else ""} \
      ~{if (_output_string) then "-o" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced:prepen\\nd,plurals,.."
    test: "bool    false                                                           set test"
    _phasedreadfile_string: "=, --phased-read-file=    string  \\\"./3-unzip/all_phased_reads\\\"                                    set"
    _bestn_int: "=, --bestn=               int     40                                                              set bestn"
    _ncore_int: "=, --n-core=              int     0                                                               set n_core"
    _minlen_int: "=, --min-len=             int     2500                                                            set min_len"
    _output_string: "=, --output=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_to_contigs\\\"  set output"
    stream: "bool    false                                                           set stream"
    debug: "bool    false                                                           set debug"
    silent: "bool    false                                                           set silent"
    cli_gen_erated: "help"
    phased_read_file: "-r=, --read-to-contig-map=  string  \\\"./4-quiver/read_maps/read_to_contig_map\\\"                       setread_to_cont"
    ig_map: "--rawread-ids=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids\\\"         set rawread_ids"
  }
  output {
    File out_stdout = stdout()
  }
}