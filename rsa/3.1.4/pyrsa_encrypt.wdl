version 1.0

task PyrsaEncrypt {
  input {
    String? name_encrypt_reads
    String? name_write_file
    String? key_form
    String public_key
  }
  command <<<
    pyrsa-encrypt \
      ~{public_key} \
      ~{if defined(name_encrypt_reads) then ("--input " +  '"' + name_encrypt_reads + '"') else ""} \
      ~{if defined(name_write_file) then ("--output " +  '"' + name_write_file + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  parameter_meta {
    name_encrypt_reads: "Name of the file to encrypt. Reads from stdin if not specified."
    name_write_file: "Name of the file to write the encrypted file to. Written to stdout if this option is not present."
    key_form: "Key format of the public key - default PEM"
    public_key: ""
  }
}