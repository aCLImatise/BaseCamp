version 1.0

task Pyrsadecrypt {
  input {
    File? name_file_decrypt
    File? name_write_file
    String? key_form
    String private_key
  }
  command <<<
    pyrsa_decrypt \
      ~{private_key} \
      ~{if defined(name_file_decrypt) then ("--input " +  '"' + name_file_decrypt + '"') else ""} \
      ~{if defined(name_write_file) then ("--output " +  '"' + name_write_file + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  parameter_meta {
    name_file_decrypt: "Name of the file to decrypt. Reads from stdin if not\\nspecified."
    name_write_file: "Name of the file to write the decrypted file to.\\nWritten to stdout if this option is not present."
    key_form: "Key format of the private key - default PEM"
    private_key: ""
  }
  output {
    File out_stdout = stdout()
  }
}