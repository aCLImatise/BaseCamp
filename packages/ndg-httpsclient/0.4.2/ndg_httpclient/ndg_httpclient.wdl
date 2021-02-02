version 1.0

task NdgHttpclient {
  input {
    File? certificate
    File? private_key
    File? ca_certificate_dir
    Boolean? debug
    File? post_data_file
    File? fetch
    Boolean? no_verify_peer
    String? passwd__basicauthuserpasswdhttp
    String? header
    String url
  }
  command <<<
    ndg_httpclient \
      ~{url} \
      ~{if defined(certificate) then ("--certificate " +  '"' + certificate + '"') else ""} \
      ~{if defined(private_key) then ("--private-key " +  '"' + private_key + '"') else ""} \
      ~{if defined(ca_certificate_dir) then ("--ca-certificate-dir " +  '"' + ca_certificate_dir + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(post_data_file) then ("--post-data-file " +  '"' + post_data_file + '"') else ""} \
      ~{if defined(fetch) then ("--fetch " +  '"' + fetch + '"') else ""} \
      ~{if (no_verify_peer) then "--no-verify-peer" else ""} \
      ~{if defined(passwd__basicauthuserpasswdhttp) then ("-a " +  '"' + passwd__basicauthuserpasswdhttp + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""}
  >>>
  parameter_meta {
    certificate: "Certificate file - defaults to $HOME/credentials.pem"
    private_key: "Private key file - defaults to the certificate file"
    ca_certificate_dir: "Trusted CA certificate file directory"
    debug: "Print debug information."
    post_data_file: "POST data file"
    fetch: "Output file"
    no_verify_peer: "Skip verification of peer certificate."
    passwd__basicauthuserpasswdhttp: ":PASSWD, --basicauth=USER:PASSWD\\nHTTP authentication credentials"
    header: ": VALUE\\nAdd HTTP header to request\\n"
    url: ""
  }
  output {
    File out_stdout = stdout()
    File out_fetch = "${in_fetch}"
  }
}