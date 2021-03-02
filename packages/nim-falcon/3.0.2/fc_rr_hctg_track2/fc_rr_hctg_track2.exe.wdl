version 1.0

task FcRrHctgTrack2exe {
  input {
    Boolean? _readtocontigmap_string
    Boolean? _output_output
    Boolean? _bestn_bestn
    Boolean? _ncore_int
    Boolean? _string_set
    Boolean? minlen_set_minlen
    Boolean? stream
    Boolean? debug
    Boolean? silent
    String message
    String ig_map
    String _rawreadids_string
  }
  command <<<
    fc_rr_hctg_track2_exe \
      ~{message} \
      ~{ig_map} \
      ~{_rawreadids_string} \
      ~{if (_readtocontigmap_string) then "-r" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (_bestn_bestn) then "-b" else ""} \
      ~{if (_ncore_int) then "-n" else ""} \
      ~{if (_string_set) then "--phased_read_file" else ""} \
      ~{if (minlen_set_minlen) then "-m" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    _readtocontigmap_string: "=, --read_to_contig_map=  string  \\\"./4-quiver/track_reads/read_to_contig_map\\\"  setread_to_cont"
    _output_output: "=, --output=              string  \\\"./4-quiver/track-reads/rawread_to_contigs\\\"  set output"
    _bestn_bestn: "=, --bestn=               int     40                                           set bestn"
    _ncore_int: "=, --n_core=              int     0                                            set n_core"
    _string_set: "=         string  \\\"\\\"                                           set"
    minlen_set_minlen: "=, --min_len=             int     2500                                         set min_len"
    stream: "bool    false                                        set stream"
    debug: "bool    false                                        set debug"
    silent: "bool    false                                        set silent"
    message: "-t, --test                  bool    false                                        set test"
    ig_map: "-p=, --partials_fn=         string  \\\"./4-quiver/track-reads/partials.json\\\"       set partials_fn"
    _rawreadids_string: "--rawread_ids=              string  \\\"\\\"                                           set rawread_ids"
  }
  output {
    File out_stdout = stdout()
  }
}