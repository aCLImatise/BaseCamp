version 1.0

task Dcmsend {
  input {
    Boolean? list_decoders
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? read_dataset
    Boolean? no_recurse
    Boolean? decompress_never
    Boolean? no_halt
    Boolean? no_illegal_proposal
    Boolean? no_uid_checks
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? single_association
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? max_send_pdu
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    dcmsend \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{if (list_decoders) then "--list-decoders" else ""} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (read_dataset) then "--read-dataset" else ""} \
      ~{if (no_recurse) then "--no-recurse" else ""} \
      ~{if (decompress_never) then "--decompress-never" else ""} \
      ~{if (no_halt) then "--no-halt" else ""} \
      ~{if (no_illegal_proposal) then "--no-illegal-proposal" else ""} \
      ~{if (no_uid_checks) then "--no-uid-checks" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (single_association) then "--single-association" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (max_send_pdu) then "--max-send-pdu" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    list_decoders: "list transfer syntaxes of decoders and exit"
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    read_dataset: "read data set without file meta information"
    no_recurse: "do not recurse within directories (default)"
    decompress_never: "never decompress compressed data sets"
    no_halt: "do not halt on first invalid input file\\nor if unsuccessful store encountered"
    no_illegal_proposal: "do not propose any presentation context that\\ndoes not contain the default TS (if needed)"
    no_uid_checks: "do not check UID values of input files"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: DCMSEND)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    single_association: "always use a single association"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    max_send_pdu: "[n]umber of bytes: integer (4096..131072)\\nrestrict max send pdu to n bytes"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
  }
  output {
    File out_stdout = stdout()
  }
}