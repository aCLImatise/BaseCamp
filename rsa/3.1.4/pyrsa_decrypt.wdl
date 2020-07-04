version 1.0

task PyrsaDecrypt {
  input {
    String? name_decrypt_reads
    String? name_write_file
    String? key_form
    String private_key
  }
  command <<<
    pyrsa-decrypt \
      ~{private_key} \
      ~{if defined(name_decrypt_reads) then ("--input " +  '"' + name_decrypt_reads + '"') else ""} \
      ~{if defined(name_write_file) then ("--output " +  '"' + name_write_file + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  parameter_meta {
    name_decrypt_reads: "Name of the file to decrypt. Reads from stdin if not specified."
    name_write_file: "Name of the file to write the decrypted file to. Written to stdout if this option is not present."
    key_form: "Key format of the private key - default PEM"
    private_key: ""
  }
}