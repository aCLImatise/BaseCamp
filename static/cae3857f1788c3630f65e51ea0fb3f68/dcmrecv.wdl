version 1.0

task Dcmrecv {
  input {
    Boolean? xf
    Boolean? ae_title
    Boolean? use_called_ae_title
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? od
    Boolean? fe
    Boolean? ignore
    String port
  }
  command <<<
    dcmrecv \
      ~{port} \
      ~{true="-xf" false="" xf} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--use-called-aetitle" false="" use_called_ae_title} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--disable-host-lookup" false="" disable_host_lookup} \
      ~{true="-od" false="" od} \
      ~{true="-fe" false="" fe} \
      ~{true="--ignore" false="" ignore}
  >>>
  parameter_meta {
    xf: "--config-file          [f]ilename, [p]rofile: string use profile p from configuration file f"
    ae_title: "[a]etitle: string set my AE title (default: DCMRECV)"
    use_called_ae_title: "always respond with called AE title"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    od: "--output-directory     [d]irectory: string (default: \".\") write received objects to existing directory d"
    fe: "--filename-extension   [e]xtension: string (default: none) append e to all generated filenames"
    ignore: "ignore dataset, receive but do not store it"
    port: "tcp/ip port number to listen on"
  }
}