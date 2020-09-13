version 1.0

task Pyrsasign {
  input {
    File? name_sign_reads
    File? name_write_signature
    String? key_form
    String private_key
    String hash_method
  }
  command <<<
    pyrsa_sign \
      ~{private_key} \
      ~{hash_method} \
      ~{if defined(name_sign_reads) then ("--input " +  '"' + name_sign_reads + '"') else ""} \
      ~{if defined(name_write_signature) then ("--output " +  '"' + name_write_signature + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  parameter_meta {
    name_sign_reads: "Name of the file to sign. Reads from stdin if not\\nspecified."
    name_write_signature: "Name of the file to write the signature to. Written to\\nstdout if this option is not present."
    key_form: "Key format of the private key - default PEM"
    private_key: ""
    hash_method: ""
  }
  output {
    File out_stdout = stdout()
  }
}