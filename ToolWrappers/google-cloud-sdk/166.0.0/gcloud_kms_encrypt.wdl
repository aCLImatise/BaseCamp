version 1.0

task GcloudKmsEncrypt {
  input {
    File? plain_text_file
    File? ciphertext_file
    File? additional_authenticated_data_file
    String? key
    String? keyring
    String? location
  }
  command <<<
    gcloud kms encrypt \
      ~{if defined(plain_text_file) then ("--plaintext-file " +  '"' + plain_text_file + '"') else ""} \
      ~{if defined(ciphertext_file) then ("--ciphertext-file " +  '"' + ciphertext_file + '"') else ""} \
      ~{if defined(additional_authenticated_data_file) then ("--additional-authenticated-data-file " +  '"' + additional_authenticated_data_file + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(keyring) then ("--keyring " +  '"' + keyring + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""}
  >>>
  parameter_meta {
    plain_text_file: ""
    ciphertext_file: "Path to the ciphertext file to output."
    additional_authenticated_data_file: "Path to the optional file containing the additional authenticated data."
    key: "The key to use for encryption."
    keyring: "The containing keyring."
    location: "The location of the requested resource."
  }
  output {
    File out_stdout = stdout()
    File out_ciphertext_file = "${in_ciphertext_file}"
  }
}