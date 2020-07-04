version 1.0

task Dcmsend {
  input {
    Boolean? _readdataset_read
    Boolean? nh
    Boolean? no_illegal_proposal
    Boolean? no_uid_checks
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? ma
    Boolean? to
    Boolean? ta
    Boolean? td
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
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-nh" false="" nh} \
      ~{true="--no-illegal-proposal" false="" no_illegal_proposal} \
      ~{true="--no-uid-checks" false="" no_uid_checks} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="-ma" false="" ma} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--max-send-pdu" false="" max_send_pdu}
  >>>
  parameter_meta {
    _readdataset_read: "--read-dataset         read data set without file meta information"
    nh: "--no-halt              do not halt on first invalid input file or if unsuccessful store encountered"
    no_illegal_proposal: "do not propose any presentation context that does not contain the default TS (if needed)"
    no_uid_checks: "do not check UID values of input files"
    ae_title: "[a]etitle: string set my calling AE title (default: DCMSEND)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    ma: "--single-association   always use a single association"
    to: "--timeout              [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    max_send_pdu: "[n]umber of bytes: integer (4096..131072) restrict max send pdu to n bytes"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
  }
}