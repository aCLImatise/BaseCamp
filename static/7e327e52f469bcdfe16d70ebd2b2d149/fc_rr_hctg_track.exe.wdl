version 1.0

task FcRrHctgTrackexe {
  input {
    Boolean? _phasedreadfile_string
    Boolean? _bestn_bestn
    Boolean? _ncore_int
    Boolean? minlen_int_set
    Boolean? _output_output
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Boolean? raw_read_ids
    Boolean? r
    Boolean? t
    String message
    String phased_read_file
    String ig_map
  }
  command <<<
    fc_rr_hctg_track_exe \
      ~{message} \
      ~{phased_read_file} \
      ~{ig_map} \
      ~{if (_phasedreadfile_string) then "-p" else ""} \
      ~{if (_bestn_bestn) then "-b" else ""} \
      ~{if (_ncore_int) then "-n" else ""} \
      ~{if (minlen_int_set) then "-m" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (raw_read_ids) then "--rawread_ids" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (t) then "-t" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    _phasedreadfile_string: "=, --phased_read_file=    string  \\\"./3-unzip/all_phased_reads\\\"                                    set"
    _bestn_bestn: "=, --bestn=               int     40                                                              set bestn"
    _ncore_int: "=, --n_core=              int     0                                                               set n_core"
    minlen_int_set: "=, --min_len=             int     2500                                                            set min_len"
    _output_output: "=, --output=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_to_contigs\\\"  set output"
    stream: "bool    false                                                           set stream"
    debug: "bool    false                                                           set debug"
    silent: "bool    false                                                           set silent"
    raw_read_ids: ""
    r: ""
    t: ""
    message: "-t, --test                  bool    false                                                           set test"
    phased_read_file: "-r=, --read_to_contig_map=  string  \\\"./4-quiver/read_maps/read_to_contig_map\\\"                       setread_to_cont"
    ig_map: "--rawread_ids=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids\\\"         set rawread_ids"
  }
  output {
    File out_stdout = stdout()
  }
}