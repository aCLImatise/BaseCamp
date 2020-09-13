version 1.0

task Certmgr {
  input {
    Boolean? add
    Boolean? del
    Boolean? put
    Boolean? list
    Boolean? ssl
    Boolean? import_key
    Boolean? adddelput_certificates
    Boolean? crl
    Boolean? ctl
    Boolean? use_store_default
    Boolean? verbose_mode_display
    Boolean? password_used_decrypt
    Boolean? pem
    String? action
    String? object_type
    String store
    File? filename
  }
  command <<<
    certmgr \
      ~{action} \
      ~{object_type} \
      ~{store} \
      ~{filename} \
      ~{if (add) then "-add" else ""} \
      ~{if (del) then "-del" else ""} \
      ~{if (put) then "-put" else ""} \
      ~{if (list) then "-list" else ""} \
      ~{if (ssl) then "-ssl" else ""} \
      ~{if (import_key) then "-importKey" else ""} \
      ~{if (adddelput_certificates) then "-c" else ""} \
      ~{if (crl) then "-crl" else ""} \
      ~{if (ctl) then "-ctl" else ""} \
      ~{if (use_store_default) then "-m" else ""} \
      ~{if (verbose_mode_display) then "-v" else ""} \
      ~{if (password_used_decrypt) then "-p" else ""} \
      ~{if (pem) then "-pem" else ""}
  >>>
  parameter_meta {
    add: "Add a certificate, CRL or CTL to specified store"
    del: "Remove a certificate, CRL or CTL to specified store"
    put: "Copy a certificate, CRL or CTL from a store to a file"
    list: "List certificates, CRL or CTL in the specified store."
    ssl: "Download and add certificates from an SSL session"
    import_key: "Import PKCS12 privateKey to keypair store."
    adddelput_certificates: "add/del/put certificates"
    crl: "add/del/put certificate revocation lists"
    ctl: "add/del/put certificate trust lists [unsupported]"
    use_store_default: "use the machine certificate store (default to user)"
    verbose_mode_display: "verbose mode (display status for every steps)"
    password_used_decrypt: "[password]   Password used to decrypt PKCS12"
    pem: "Put certificate in Base-64 encoded format (default DER encoded)"
    action: ""
    object_type: ""
    store: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}