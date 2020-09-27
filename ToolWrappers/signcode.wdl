version 1.0

task Signcode {
  input {
    File? spc
    File? private_key_file
    Int? md_hash_algorithm
    File? description_signed_file
    File? url_signed_file
    String? timestamp_service_http
    Boolean? tr
    Boolean? tw
    Boolean? only_timestamp_signature
    String? key_container_name
    String? provider_name
    Boolean? _provider_type
    Boolean? ky
    Boolean? _key_location
    File filename
  }
  command <<<
    signcode \
      ~{filename} \
      ~{if defined(spc) then ("-spc " +  '"' + spc + '"') else ""} \
      ~{if defined(private_key_file) then ("-v " +  '"' + private_key_file + '"') else ""} \
      ~{if defined(md_hash_algorithm) then ("-a " +  '"' + md_hash_algorithm + '"') else ""} \
      ~{if defined(description_signed_file) then ("-n " +  '"' + description_signed_file + '"') else ""} \
      ~{if defined(url_signed_file) then ("-i " +  '"' + url_signed_file + '"') else ""} \
      ~{if defined(timestamp_service_http) then ("-t " +  '"' + timestamp_service_http + '"') else ""} \
      ~{if (tr) then "-tr" else ""} \
      ~{if (tw) then "-tw" else ""} \
      ~{if (only_timestamp_signature) then "-x" else ""} \
      ~{if defined(key_container_name) then ("-k " +  '"' + key_container_name + '"') else ""} \
      ~{if defined(provider_name) then ("-p " +  '"' + provider_name + '"') else ""} \
      ~{if (_provider_type) then "-y" else ""} \
      ~{if (ky) then "-ky" else ""} \
      ~{if (_key_location) then "-r" else ""}
  >>>
  parameter_meta {
    spc: "Software Publisher Certificate file"
    private_key_file: "Private Key file"
    md_hash_algorithm: "| md5   Hash Algorithm (default: SHA1)"
    description_signed_file: "Description for the signed file"
    url_signed_file: "URL for the signed file"
    timestamp_service_http: "Timestamp service http URL"
    tr: "#   Number of retries for timestamp"
    tw: "#   Delay between retries"
    only_timestamp_signature: "Only timestamp (no signature)"
    key_container_name: "Key Container Name"
    provider_name: "Provider Name"
    _provider_type: "#    Provider Type"
    ky: "[signature|exchange|#]      Key Type"
    _key_location: "[localMachine|currentUser]   Key Location"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}