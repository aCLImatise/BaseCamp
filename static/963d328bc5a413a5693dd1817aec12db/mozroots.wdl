version 1.0

task Mozroots {
  input {
    Boolean? import_certificates_trust
    Boolean? sync
    Boolean? ask
    Boolean? ask_add
    Boolean? ask_remove
    String? url
    File? download_use_file
    Int? pkcs_seven
    Boolean? machine
    Boolean? quiet
  }
  command <<<
    mozroots \
      ~{if (import_certificates_trust) then "--import" else ""} \
      ~{if (sync) then "--sync" else ""} \
      ~{if (ask) then "--ask" else ""} \
      ~{if (ask_add) then "--ask-add" else ""} \
      ~{if (ask_remove) then "--ask-remove" else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(download_use_file) then ("--file " +  '"' + download_use_file + '"') else ""} \
      ~{if defined(pkcs_seven) then ("--pkcs7 " +  '"' + pkcs_seven + '"') else ""} \
      ~{if (machine) then "--machine" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    import_certificates_trust: "Import the certificates into the trust store."
    sync: "Synchronize (add/remove) the trust store with the certificates."
    ask: "Always confirm before adding or removing trusted certificates."
    ask_add: "Always confirm before adding a new trusted certificate."
    ask_remove: "Always confirm before removing an existing trusted certificate."
    url: "Specify an alternative URL for downloading the trusted\\ncertificates (MXR source format)."
    download_use_file: "Do not download but use the specified file."
    pkcs_seven: "Export the certificates into a PKCS#7 file."
    machine: "Import the certificate in the machine trust store.\\nThe default is to import into the user store."
    quiet: "Limit console output to errors and confirmations messages."
  }
  output {
    File out_stdout = stdout()
  }
}