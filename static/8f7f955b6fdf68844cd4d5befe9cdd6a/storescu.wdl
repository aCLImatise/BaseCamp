version 1.0

task Storescu {
  input {
    Boolean? _read_data
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? xf
    Boolean? _disablenewvr_disable
    Boolean? user
    Boolean? password
    Boolean? empty_password
    Boolean? kt
    Boolean? pos_response
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    storescu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{true="-f" false="" _read_data} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="-xf" false="" xf} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="--user" false="" user} \
      ~{true="--password" false="" password} \
      ~{true="--empty-password" false="" empty_password} \
      ~{true="-kt" false="" kt} \
      ~{true="--pos-response" false="" pos_response} \
      ~{true="-pw" false="" pw} \
      ~{true="--pem-keys" false="" pem_keys} \
      ~{true="--der-keys" false="" der_keys} \
      ~{true="-rc" false="" rc} \
      ~{true="-vc" false="" vc} \
      ~{true="-ic" false="" ic}
  >>>
  parameter_meta {
    _read_data: "--read-dataset       read data set without file meta information"
    ae_title: "[a]etitle: string set my calling AE title (default: STORESCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    xf: "--config-file        [f]ilename, [p]rofile: string use profile p from config file f"
    _disablenewvr_disable: "--disable-new-vr     disable support for new VRs, convert to OB"
    user: "[u]ser name: string authenticate using user name u"
    password: "[p]assword: string (only with --user) authenticate using password p"
    empty_password: "send empty password (only with --user)"
    kt: "--kerberos           [f]ilename: string read kerberos ticket from file f --saml               [f]ilename: string read SAML request from file f"
    pos_response: "expect positive response"
    pw: "--null-passwd        use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert  verify peer certificate, fail if absent (default)"
    vc: "--verify-peer-cert   verify peer certificate if present"
    ic: "--ignore-peer-cert   don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
  }
}