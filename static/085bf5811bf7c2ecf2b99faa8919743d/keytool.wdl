version 1.0

task Keytool {
  input {
    Boolean? cert_req
    Boolean? change_alias
    Boolean? delete
    Boolean? export_cert
    Boolean? gen_key_pair
    Boolean? gen_sec_key
    Boolean? gen_cert
    Boolean? import_cert
    Boolean? import_pass
    Boolean? import_keystore
    Boolean? key_passwd
    Boolean? list
    Boolean? print_cert
    Boolean? print_cert_req
    Boolean? print_crl
    Boolean? store_passwd
  }
  command <<<
    keytool \
      ~{if (cert_req) then "-certreq" else ""} \
      ~{if (change_alias) then "-changealias" else ""} \
      ~{if (delete) then "-delete" else ""} \
      ~{if (export_cert) then "-exportcert" else ""} \
      ~{if (gen_key_pair) then "-genkeypair" else ""} \
      ~{if (gen_sec_key) then "-genseckey" else ""} \
      ~{if (gen_cert) then "-gencert" else ""} \
      ~{if (import_cert) then "-importcert" else ""} \
      ~{if (import_pass) then "-importpass" else ""} \
      ~{if (import_keystore) then "-importkeystore" else ""} \
      ~{if (key_passwd) then "-keypasswd" else ""} \
      ~{if (list) then "-list" else ""} \
      ~{if (print_cert) then "-printcert" else ""} \
      ~{if (print_cert_req) then "-printcertreq" else ""} \
      ~{if (print_crl) then "-printcrl" else ""} \
      ~{if (store_passwd) then "-storepasswd" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cert_req: "Generates a certificate request"
    change_alias: "Changes an entry's alias"
    delete: "Deletes an entry"
    export_cert: "Exports certificate"
    gen_key_pair: "Generates a key pair"
    gen_sec_key: "Generates a secret key"
    gen_cert: "Generates certificate from a certificate request"
    import_cert: "Imports a certificate or a certificate chain"
    import_pass: "Imports a password"
    import_keystore: "Imports one or all entries from another keystore"
    key_passwd: "Changes the key password of an entry"
    list: "Lists entries in a keystore"
    print_cert: "Prints the content of a certificate"
    print_cert_req: "Prints the content of a certificate request"
    print_crl: "Prints the content of a CRL file"
    store_passwd: "Changes the store password of a keystore"
  }
  output {
    File out_stdout = stdout()
  }
}